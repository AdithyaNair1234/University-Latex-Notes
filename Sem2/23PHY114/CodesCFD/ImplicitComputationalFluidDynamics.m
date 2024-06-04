%  Constants
mu = 0.6;
N = 32;
h = 1;
rho = 0.5;
dpdx = -2;
gx = 0.4;
alpha1 = 0.1;
alpha2 = 0.5;


% Time and space steps
deltaY = h/N;
deltaT = -a*rho*deltaY^2/mu;
T = 20000*deltaT;

a = -0.4;
b = 1 + 2*mu*deltaT/rho*(deltaY^2);

% Initial Velocities
uInitial = zeros(N-1,1);
uInitial(1) = alpha1;
uInitial(end) = alpha2;

U = uInitial;
y = deltaY:deltaY:h-deltaY;

% Calculating the velocities
function A = constantCoefficientMatrix(a,b,N)
	A = b*eye(N-1,N-1);
	aMatrix1 = zeros(N-1,N-1);
	aMatrix1(1:end-1,2:end) = a*eye(N-2,N-2);
	aMatrix2 = zeros(N-1,N-1);
	aMatrix2(2:end,1:end-1) = a*eye(N-2,N-2);
	A = A + aMatrix1 + aMatrix2;
end

c = deltaT/rho*dpdx + deltaT*gx;
function f = forceVector(c,a,alpha1,alpha2,Ut,N)
	f = c*ones(N-1,1);
	f(1) -= a*alpha1;
	f(end) -= a*alpha2;
	f += Ut;
end
for t = 0:deltaT:T
	f = forceVector(c,a,alpha1,alpha2,U,N);
	A = constantCoefficientMatrix(a,b,N);
	U = A\f;
	plot(U,y);
	pause(0.2);
end
