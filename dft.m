function sw = dft(st)
% DFT - Discrete Fourier Transform

M = length(st);
N = M;
WN = exp(2*pi*j/N);

% Main loop
% Using the forumla of DFT
for n=0:N-1
    temp = 0;
    for m=0:M-1
        mn = -(m*n);
        WNmn = WN.^mn;
        temp = temp + st(m+1)*WNmn;
    end
    sw(n+1) = temp;
end
end

% Using these signals to generate DFT
% s1 = ones(1,64);
% s2 = ((1:64)==1);
% s3 = sin(((1:64)-1)*2*pi*w/100);
% s4 = cos(((1:64)-1)*2*pi*w/100);
% s5 = [0:31 32:-1:1]<T;
% subplot(5,1,1);plot(s1);subplot(5,1,2);plot(s2);subplot(5,1,3);plot(s3);subplot(5,1,4);plot(s4);subplot(5,1,5);plot(s5);
% subplot(5,1,1);plot(dft(s1));subplot(5,1,2);plot(dft(s2));subplot(5,1,3);plot(dft(s3));subplot(5,1,4);plot(dft(s4));subplot(5,1,5);plot(dft(s5));
