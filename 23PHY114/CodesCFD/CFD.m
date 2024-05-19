% Defining constants
rho = 0.5;
g = 9.81*cos(0.0408);
h = 0.75;
N = 100;
deltaY = h/N;

% Terms in the equation
nu = 0.6; % Kinematic Viscosity
mu = nu*rho;
alpha = 0.3; % Diffusion Number
deltaT = alpha*rho*(deltaY^2)/mu; % Evaluating time step from alpha
dpdx = -2; % Pressure Gradient

% Velocities of the plates
U0 = 0;
Uh = 0.2;

% Time for code to run
T = 0.2;

U = zeros(floor(T/deltaT),N+1);
% Initial Conditions
y = 0:deltaY:h;
% Equation
for k = 2:floor(T/deltaT)
  U(k,1) = U0;
  U(k,N+1) = Uh;
  for i = 2:N
    U(k,i) = deltaT/rho*(-dpdx + rho*g) + alpha*(U(k-1,i+1)-2*U(k-1,i) + U(k-1,i-1)) + U(k-1,i);
  end
end
% Plotting
% Y axis - y, x axis - U(y), For a given time t
plot(U(end,:),y,'blue');
xlabel("Velocity");
ylabel("Height");
xlim([0,1.5])
% xlim([0,0.5]);

























