% This is the example truss question.

% Data input
E = 30e6; % MPA
areaVector = [0.5 0.4]';
angleVector = [0 3*pi/2]';
lengthVector = [10 10*sqrt(2)];
elementCount = 2;
nodeCount = elementCount + 1;
stiffnessGlobal = zeros(nodeCount*2,nodeCount*2) % It is times 2 because we're finding it for two dimensions.
forceFinal = zeros(nodeCount*2,1);
displacementFinal = zeros(nodeCount*2,1);
forceFinal(4) = -1000;
positionVector = [0 0 10 0 0 10]';

function stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    stiffnessConstant = E*A/l;
    R = [cos(theta) -sin(theta); -sin(theta) cos(theta)];
    stiffnessMatrix = [stiffnessConstant 0 -stiffnessConstant 0; zeros(1,4);-stiffnessConstant 0 stiffnessConstant 0; zeros(1,4)];
    R4 = [R zeros(2,2); zeros(2,2) R];
    stiffnessLocal = R4*stiffnessMatrix*R4';
end

% Generating the local stiffnesses of each element and appending them to the global matrix.
A = 0; theta = 0; l = 0; stiffnessLocal = zeros(4,4);
for element = 1:elementCount
    A = areaVector(element);
    theta = angleVector(element);
    l = lengthVector(element);
    stiffnessLocal = localStiffnessGenerator(E,A,l,theta);
    selectionBeginning = 2*element - 1; % 1,3
    selectionEnding = selectionBeginning + 3;
    stiffnessGlobal(selectionBeginning:selectionEnding,selectionBeginning:selectionEnding) = stiffnessGlobal(selectionBeginning:selectionEnding,selectionBeginning:selectionEnding) + stiffnessLocal;
end

% Eliminating all displacements and subsequently all forces, to be zero.
forceEvaluated = forceFinal(3:end-2);
displacementEvaluated = displacementFinal(3:end-2);
stiffnessEvaluated = stiffnessGlobal(3:end-2,3:end-2);

displacementEvaluated = stiffnessEvaluated\forceEvaluated;

displacementFinal(3:end-2) = displacementEvaluated;
positionVectorFinal = positionVector + displacementFinal;

plot(positionVector(1:2:end),positionVector(2:2:end), '--ob')
hold on;
plot(positionVectorFinal(1:2:end),positionVectorFinal(2:2:end), '--or')


