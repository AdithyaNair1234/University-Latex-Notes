% Data input
E = 11.4e6; % MPA
areaVector = 50e-4*ones(5,1);
lengthVector = [0.5;1.0;sqrt(5)/2;1/sqrt(2);0.5];
angleVector = [0;0;3*pi/4;pi/4;pi/2];
positionVector = [-0.5;0;0;0;1;0;0;0.5]; % Found by taking B as origin

elementCount = 5;
nodeCount = 4; % Since there are 4 nodes: A, B, C, D

stiffnessGlobal = zeros(nodeCount*2,nodeCount*2); % Times 2 for two dimensions
forceFinal = zeros(nodeCount*2,1);
displacementFinal = zeros(nodeCount*2,1);

% Function to generate local stiffness matrix
function stiffnessLocal = localStiffnessGenerator(E,A,l,theta)
    stiffnessConstant = E*A/l;
    R = [cos(theta) -sin(theta); -sin(theta) cos(theta)];
    stiffnessMatrix = [stiffnessConstant 0 -stiffnessConstant 0; zeros(1,4);...
                       -stiffnessConstant 0 stiffnessConstant 0; zeros(1,4)];
    R4 = [R zeros(2,2); zeros(2,2) R];
    stiffnessLocal = R4*stiffnessMatrix*R4';
end

% Generating the local stiffnesses of each element and appending them to the global matrix
for node = 1:nodeCount-1
    A = areaVector(node);
    theta = angleVector(node);
    l = lengthVector(node);
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    selectionBeginning = 2*(node - 1) + 1; % Beginning index for node displacement
    selectionEnding = selectionBeginning + 3; % Ending index for node displacement
    stiffnessGlobal(selectionBeginning:selectionEnding,selectionBeginning:selectionEnding) = stiffnessGlobal(selectionBeginning:selectionEnding,selectionBeginning:selectionEnding) + stiffnessLocal;
end

% Apply boundary conditions (fixed for A, roller for B)
stiffnessGlobal(1:2,:) = 0; % Fixed for node A
stiffnessGlobal(:,1:2) = 0; % Fixed for node A
stiffnessGlobal(3,3) = stiffnessGlobal(3,3) + stiffnessGlobal(4,4); % Vertical roller for node B
stiffnessGlobal(4,3:4) = 0; % No horizontal constraint for roller at node B

% Eliminating all displacements and subsequently all forces, to be zero
forceEvaluated = forceFinal(3:end-2);
displacementEvaluated = displacementFinal(3:end-2);
stiffnessEvaluated = stiffnessGlobal(3:end-2,3:end-2);

% Solving for displacements
displacementEvaluated = stiffnessEvaluated\forceEvaluated;

% Updating final displacements and positions
displacementFinal(3:end-2) = displacementEvaluated;
positionVectorFinal = positionVector + displacementFinal;

% Plotting
hold on;
plot(positionVector(1:2:end),positionVector(2:2:end), '--ob')

plot(positionVectorFinal(1:2:end),positionVectorFinal(2:2:end), '--or')

