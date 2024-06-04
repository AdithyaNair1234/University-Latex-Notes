% Input
E = 11.4e6;
areaVector = 50e-4*ones(5,1);
lengthVector = [0.5;1.0;sqrt(5)/2;1/sqrt(2);0.5];
angleVector = [0;0;pi- atan(1/2);pi/4;pi/2];
positionVector = [-0.5;0;0;0;1;0;0;0.5]; % Found by taking B as origin

nodeVector = [1;2;2;3;3;4;1;4;2;4]; % AB, BC, CD, DA, DB
elementCount = 5;
nodeCount = 4;

displacementVector = zeros(2*nodeCount,1);
forceVector = zeros(2*nodeCount,1);
forceVector(6) = -1500;
forceVector(7) = -1000;


stiffnessGlobal = zeros(2*nodeCount,2*nodeCount);

function stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    stiffnessConstant = E*A/l;
    R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
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
A = 0; theta = 0; l = 0; stiffnessLocal = zeros(4,4); nodeAxialForces = zeros(nodeCount,1);
for element = 1:5 % For first three bars
    A = areaVector(element);
    theta = angleVector(element);
    l = lengthVector(element);
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    nodeCounter = element*2 - 1;
    stiffnessLocalGlobal = local2Global(stiffnessLocal,nodeVector(nodeCounter),nodeVector(nodeCounter+1),nodeCount);
    stiffnessLocal
    stiffnessLocalGlobal
    stiffnessGlobal += stiffnessLocalGlobal;
end

% Applying Boundary Conditions,
forceEval = forceVector([3 5:end]);
displacementEval = displacementVector([3 5:end]);
stiffnessEval = stiffnessGlobal([]3:end-2,[3:end-2]);
displacementEval = stiffnessEval\forceEval;

displacementVector([3:end-2]) = displacementEval;
forceVector = stiffnessGlobal*displacementVector;

forceAxial = zeros(4,1);
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
