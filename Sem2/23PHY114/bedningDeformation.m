elementCount = 1;
nodeCount = 2;

stiffnessGlobal = zeros(nodeCount*2,nodeCount*2);
forceGlobal = zeros(nodeCount*2,1);
displacementGlobal = zeros(nodeCount*2,1);

scalarForce = -100e3

forceGlobal(3) = scalarForce;
I = 0.001; % m^4

L = 10;

E = 200e9; % 200 Giga Pascals
positionVector = [0;0;L;0];

function Ke = stiffness(E,I,L)
    k = E*I/L^3;
    Ke = k*[12 6*L -12 6*L; 6*L 4*L^2 -6*L 2*L^2;-12 -6*L 12 -6*L;6*L 4*L^2 -6*L 2*L^2]
end

Kl = zeros(4,4);
for element=1:elementCount
    Kl = stiffness(E,I,L)
    loc1 = 2*element - 1;
    loc2 = loc1+3;
end 
stiffnessGlobal = Kl;

stiffnessEval = stiffnessGlobal(3:end,3:end);
forceEval = forceGlobal(3:end);

displacementEval = stiffnessGlobal\forceEval;
displacementGlobal(3:end) = displacementEval;
uxuy = [0 ug(1) 0 ug(3)];
evaluatedPositionVector = positionVector + uxuy;
plot(positionVector(1:2:end),positionVector(2:2:end),'-xb')
hold on
plot(evaluatedPositionVector(1:2:end),evaluatedPositionVector(2:2:end),'--xb')

function fe = uniformForce(l,force) % For constant uniform force for the entire bar
    fe = (l*p/12)*[6;l;6;-l]
end 

function forceLinearlyIncreasing(l,force) % For force that is y = mx form
    fe = (p*l/60)*[9;2*l;21;-3*l]
end

function pointForce(p,x)
    H1 = 2*(x/l)^3 - 3*(x/l)^2 + 1;
    H2 = x - 2*x^2/l + x^3/l^2;
    H3 = 3*(x/l)^2 -2*(x/l)^3;
    H4 = x^3/l^2 -x^2/l^2;
    H = [H1;H2;H3;H4];
    fe = H*p;
end

