nel = 2nn = 3;
Kg = zeros(nn*2,nn*2); \\ 2 for the dimensions we are working with.
fg = zeros(nn*2,1);
ug = zeros(nn*2,1);

A1 = 0.5;
A2 = 0.4;
L1 = 10;
L2 = 10*sqrt(2);
E = 30e6;

function Kl = stiffness(E,A,l,theta)
    k = E*A/l;
    R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
    R4 = [R zeros(2,2);zeros(2,2) R];
    K = [k 0 -k 0; 0 0 0 0;-k 0 k 0; 0 0 0 0];
    Kl = R*K*R';
end

points = [0,0;10 0; 0 10];
plot(points(:,1),points(:,2));

ele = 1;
theta1 = 0;
theta2 = pi - pi/4;
theta3 = pi/4;

K1 = stiffness(E,A1,L1,theta1);
K2 = stiffness(E,A2,L2,theta2);
K3 = stiffness(E,A3,L3,theta3);

Kg[1:4,:] = [K1 zeros(4,2)];
Kg[,:]
