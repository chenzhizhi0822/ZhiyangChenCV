function y=wft(s,t,n)

% Add hanning window
% Set t and n 
% t is the position of the window
% n is the width of the window
s1 = s(floor(t-n/2)+(1:n)).*hanning(n);

figure(1);plot(abs(fft(s1)));
figure(2);plot(log(abs(fft(s1))));

%[S,F,T,P]=spectrogram(x,window,noverlap,nfft,fs)