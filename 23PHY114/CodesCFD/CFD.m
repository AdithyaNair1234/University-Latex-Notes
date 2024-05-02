% Defining constants
mu = 0.6;
rho = 100;
g = 0.4;
h = 1;
N = 32;
deltaY = h/N;

% Terms in the equation
nu = mu/rho; % Kinematic Viscosity
alpha = 0.51; % Diffusion Number
deltaT = alpha*rho*(deltaY^2)/mu; % Evaluating time step from alpha
dpdx = -2; % Pressure Gradient

% Velocities of the plates
U0 = 0;
Uh = 0;

% Time for code to run
T = 5;

U = zeros(floor(T/deltaT),N+1);
% Initial Conditions
y = 0:deltaY:h;


C = (dpdx + rho*g)/2*mu;
Uexact = C.*(-y.^2 + h.*y);
% Equation
for k = 2:floor(T/deltaT)
  U(k,1) = U0;
  U(k,N+1) = Uh;
  for i = 2:N
    U(k,i) = deltaT/rho*(-dpdx    + rho*g) + alpha*(U(k-1,i+1)-2*U(k-1,i) + U(k-1,i-1)) + U(k-1,i);
  end
end

% Plotting
% Y axis - y, x axis - U(y), For a given time t
plot(U(end,:),y,'blue');
hold on;
plot(Uexact*ones(size(y)), y, 'red');




























