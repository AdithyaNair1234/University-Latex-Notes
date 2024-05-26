% Parameters
n = 100; % number of original points
N_interp = 1000; % number of points after interpolation

% Original signal: real-valued sine wave
x = linspace(0, 2*pi, n);
y = sin(x);

% Compute DFT of the original signal
Y = fft(y);

% Zero padding: extend the DFT result to N_interp points
Y_padded = [Y, zeros(1, N_interp - n)];

% Inverse DFT of the zero-padded signal
y_interp = ifft(Y_padded) * N_interp / n;

% Define the new x-axis for the interpolated signal
x_interp = linspace(0, 2*pi, N_interp);
% Plot
figure;
subplot(2, 1, 1);
plot(x, y, 'or');
title('Original Signal');
xlabel('x');
ylabel('y');
hold on;
plot(linspace(0,2*pi,1000*n),sin(linspace(0,2*pi,1000*n)),'-');
axis([0 2*pi -1 1])

subplot(2, 1, 2);
plot(x_interp, real(y_interp));
title('Interpolated Signal using Discrete Fourier Representation');
xlabel('x');
ylabel('Interpolated y');
hold on;
plot(x, y, 'o');
axis([0 2*pi -1 1])
% Display the figure
shg;

