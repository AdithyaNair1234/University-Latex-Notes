
% Parameters
n = 101; % number of points (odd for this example)
x = linspace(0, 2*pi, n); % from 0 to 2*pi (one period)

% Original signal: real-valued sine wave
y = sin(x);

% Compute DFT
Y = fft(y);

% Define m depending on n being even or odd
if mod(n, 2) == 0
    m = n / 2;
else
    m = (n - 1) / 2;
end

% Extract the Fourier coefficients for lower frequencies
c = zeros(1, n);
for k = -m:m
    if k < 0
        c(mod(k + n, n) + 1) = Y(mod(n + k, n) + 1);
    else
        c(k + 1) = Y(k + 1);
    end
end

% Interpolation using the inverse FFT of lower frequency components
N_interp = 1000; % number of points after interpolation
Y_interp = ifft([c, zeros(1, N_interp - n)]) * N_interp / n;

% Define interpolation x-axis
x_interp = linspace(0, 2*pi, N_interp);

% Plot
figure;
subplot(2, 1, 1);
plot(x, y, 'o-');
title('Original Signal');
xlabel('x');
ylabel('y');

subplot(2, 1, 2);
plot(x_interp, real(Y_interp));
title('Interpolated Signal using Lower Frequencies');
xlabel('x');
ylabel('Interpolated y');

% Display the figure
shg;

