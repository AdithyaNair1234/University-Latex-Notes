dt = .001;
t = 0:dt:1;
forig = sin(2*pi*50*t) + sin(2*pi*120*t); % Sum of 2 frequencies
f = forig + 2.5*randn(size(t)); % Add some noise
%% Compute the Fast Fourier Transform FFT
n = length(t);
fhat = fft(f,n); % Compute the fast Fourier transform
PSD = fhat.*conj(fhat)/n; % Power spectrum (power per freq)
freq = 1/(dt*n)*(0:n); % Create x-axis of frequencies in Hz
L = 1:floor(n/2); % Only plot the first half of freqs
%% Use the PSD to filter out noise
indices = PSD>100; % Find all freqs with large power
PSDclean = PSD.*indices; % Zero out all others
fhat = indices.*fhat; % Zero out small Fourier coeffs. in Y
ffilt = ifft(fhat); % Inverse FFT for filtered time signal
%% PLOTS
subplot(3,1,1)
plot(t,f,'r','LineWidth',1.2), hold on
plot(t,forig,'k','LineWidth',1.5)
legend('Noisy','Clean')
title("Noisy Signal And Clean Signal")
subplot(3,1,2)
plot(t,forig,'k','LineWidth',1.5), hold on
plot(t,ffilt,'b','LineWidth',1.5)
axis([0 1 -15 10])
legend('Clean','Filtered')
title("Clean Signal and Filtered Signal")
subplot(3,1,3)
plot(freq(L),PSD(L),'r','LineWidth',1.5), hold on
plot(freq(L),PSDclean(L),'-b','LineWidth',1.2)
legend('Noisy','Filtered')
title("Power Spectrum Density Graph")
