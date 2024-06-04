% Input
E = 200e7;
elementCount = 9;
nodeCount = 6;

areaVector = 2.5e-3*ones(elementCount,1);
% Following from the node order
% 12 23 34 45 56 13 35 24 46
lengthVector = [4;3;5;3;5;5;4;4;4];
angleVector = [0;90;360-atan(3/4);90;360-atan(3/4);45;0;0;0];
positionVector = [0;0;4;0;4;3;8;0;8;3;12;0] % ABCDEGH

nodeVector = [1;2;2;3;3;4;4;5;5;6;1;3;3;5;2;4;4;6]; % AB, BC, CD, DA, DB
displacementVector = zeros(2*nodeCount,1);
forceVector = zeros(2*nodeCount,1);
forceVector(8) = 400; % F2
forceVector(7) = -1200; % F1

% DE, EG,

stiffnessGlobal = zeros(2*nodeCount,2*nodeCount);

function stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    stiffnessConstant = E*A/l;
    R = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
    stiffnessMatrix = [stiffnessConstant 0 -stiffnessConstant 0; zeros(1,4);-stiffnessConstant 0 stiffnessConstant 0; zeros(1,4)];
    R4 = [R zeros(2,2); zeros(2,2) R];
    stiffnessLocal = R4*stiffnessMatrix*R4';
end
function stiffnessLocalGlobal = local2Global(stiffnessLocal,node1,node2,nodeCount)
    stiffnessLocalGlobal = zeros(2*nodeCount,2*nodeCount);
    i = 2*node1 - 1;
    j = 2*node2 - 1;
    stiffnessLocalGlobal(i:(i+1),i:(i+1)) = stiffnessLocal(1:2,1:2);
    stiffnessLocalGlobal(i:(i+1),j:(j+1)) = stiffnessLocal(1:2,3:4);
    stiffnessLocalGlobal(j:(j+1),i:(i+1)) = stiffnessLocal(3:4,1:2);
    stiffnessLocalGlobal(j:(j+1),j:(j+1)) = stiffnessLocal(3:4,3:4);
end

function forceAxial = tension(stiffnessLocal,theta,displacementSelected)
    R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
    R4 = [R zeros(2,2); zeros(2,2) R];
    displacementLocal = R4'*displacementSelected;
    forceAxial = stiffnessLocal*displacementLocal;
end

% Looping through the entire structure.
A = 0; theta = 0; l = 0; stiffnessLocal = zeros(4,4);
for element = 1:elementCount % For first three bars
    A = areaVector(element);
    theta = angleVector(element);
    l = lengthVector(element);
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    nodeCounter = element*2 - 1;
    stiffnessLocalGlobal = local2Global(stiffnessLocal,nodeVector(nodeCounter),nodeVector(nodeCounter+1),nodeCount);
    stiffnessGlobal += stiffnessLocalGlobal;
end

% Applying Boundary Conditions,
range = [3:nodeCount*2-2]
forceEval = forceVector(range);
displacementEval = displacementVector(range);
stiffnessEval = stiffnessGlobal(range,range);
displacementEval = stiffnessEval\forceEval;


displacementVector(range) = displacementEval;
forceVector = stiffnessGlobal*displacementVector;


positionVectorNew = positionVector + displacementVector;
plot(positionVector(1:2:end),positionVector(2:2:end),'--or');
hold on;
plot(positionVectorNew(1:2:end),positionVectorNew(2:2:end),'--ob');
forceAxial = zeros(4,1);
nodeAxialForces = zeros(nodeCount,1);
% 2 Finding Axial Forces
for element = 1:elementCount
    A = areaVector(element);
    theta = angleVector(element);
    l = lengthVector(element);
    nodeCounter = element*2 - 1;
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    displacementVectorSelected = zeros(4,1);
    displacementVectorSelected(1:2) = displacementVector(nodeVector(nodeCounter):(nodeVector(nodeCounter))+1);
    displacementVectorSelected(3:4) = displacementVector(nodeVector(nodeCounter+1):(nodeVector(nodeCounter+1))+1);
    forceAxial = tension(stiffnessLocal,theta,displacementVectorSelected);
    nodeAxialForces(nodeVector(nodeCounter)) += forceAxial(1);
    nodeAxialForces(nodeVector(nodeCounter+1)) += forceAxial(3);
end

% Calculating Stresses And Strains
stressVector = nodeAxialForces/A;
strainVector = displacementVector/l;

% When maximum stress is 300 MPa, Forces need a new area,
stressVector = 300e6;
areaVector = stressVector./forceVector;
displacementVector = zeros(2*nodeCount,1);
forceVector = zeros(2*nodeCount,1);
forceVector(8) = 400; % F2
forceVector(7) = -1200; % F1

% DE, EG,

stiffnessGlobal = zeros(2*nodeCount,2*nodeCount);

function stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    stiffnessConstant = E*A/l;
    R = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
    stiffnessMatrix = [stiffnessConstant 0 -stiffnessConstant 0; zeros(1,4);-stiffnessConstant 0 stiffnessConstant 0; zeros(1,4)];
    R4 = [R zeros(2,2); zeros(2,2) R];
    stiffnessLocal = R4*stiffnessMatrix*R4';
end
function stiffnessLocalGlobal = local2Global(stiffnessLocal,node1,node2,nodeCount)
    stiffnessLocalGlobal = zeros(2*nodeCount,2*nodeCount);
    i = 2*node1 - 1;
    j = 2*node2 - 1;
    stiffnessLocalGlobal(i:(i+1),i:(i+1)) = stiffnessLocal(1:2,1:2);
    stiffnessLocalGlobal(i:(i+1),j:(j+1)) = stiffnessLocal(1:2,3:4);
    stiffnessLocalGlobal(j:(j+1),i:(i+1)) = stiffnessLocal(3:4,1:2);
    stiffnessLocalGlobal(j:(j+1),j:(j+1)) = stiffnessLocal(3:4,3:4);
end

function forceAxial = tension(stiffnessLocal,theta,displacementSelected)
    R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
    R4 = [R zeros(2,2); zeros(2,2) R];
    displacementLocal = R4'*displacementSelected;
    forceAxial = stiffnessLocal*displacementLocal;
end

% Looping through the entire structure.
A = 0; theta = 0; l = 0; stiffnessLocal = zeros(4,4);
for element = 1:elementCount % For first three bars
    A = areaVector(element);
    theta = angleVector(element);
    l = lengthVector(element);
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    nodeCounter = element*2 - 1;
    stiffnessLocalGlobal = local2Global(stiffnessLocal,nodeVector(nodeCounter),nodeVector(nodeCounter+1),nodeCount);
    stiffnessGlobal += stiffnessLocalGlobal;
end

% Applying Boundary Conditions,
range = [3:nodeCount*2-2]
forceEval = forceVector(range);
displacementEval = displacementVector(range);
stiffnessEval = stiffnessGlobal(range,range);
displacementEval = stiffnessEval\forceEval;


displacementVector(range) = displacementEval;
forceVector = stiffnessGlobal*displacementVector;


positionVectorNew = positionVector + displacementVector;
plot(positionVector(1:2:end),positionVector(2:2:end),'--or');
hold on;
plot(positionVectorNew(1:2:end),positionVectorNew(2:2:end),'--ob');
forceAxial = zeros(4,1);
nodeAxialForces = zeros(nodeCount,1);
% 2 Finding Axial Forces
for element = 1:elementCount
    A = areaVector(element);
    theta = angleVector(element);
    l = lengthVector(element);
    nodeCounter = element*2 - 1;
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    displacementVectorSelected = zeros(4,1);
    displacementVectorSelected(1:2) = displacementVector(nodeVector(nodeCounter):(nodeVector(nodeCounter))+1);
    displacementVectorSelected(3:4) = displacementVector(nodeVector(nodeCounter+1):(nodeVector(nodeCounter+1))+1);
    forceAxial = tension(stiffnessLocal,theta,displacementVectorSelected);
    nodeAxialForces(nodeVector(nodeCounter)) += forceAxial(1);
    nodeAxialForces(nodeVector(nodeCounter+1)) += forceAxial(3);
end

% Calculating Stresses And Strains
stressVector = nodeAxialForces/A;
strainVector = displacementVector/l;

