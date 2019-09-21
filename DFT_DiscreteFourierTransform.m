clc;
clear all;
close all;

% given continous signal x(t)=sin(2*pi*1000*t)+0.5sin(2*pi*2000*t+3*pi/4)

fs = 8000; %sampling frequency
N = 8;  %number of data point
n = 0:N-1;
ts = 1/fs;

x = sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+3*pi/4);

for j = 0: N-1
  m = j+1;
  real(m) = img(m) = 0;
  for i = 0: N-1
    real(m) = real(m) + x(i+1)*cos(2*pi*i*j/N);
    img(m) = img(m) + x(i+1)*sin(2*pi*i*j/N);
  endfor
  mag(m) = sqrt(real(m)^2 + img(m)^2);
  P(m)=mag(m)^2;    % ---one way
  phase(m) = atan(img(m)/real(m));
endfor;

n=0:N-1;
m=0:N-1;

subplot(3,2,1)
disp('input signal');
disp(x);
stem(n,x)
xlabel('time domain index of input samples')
ylabel('input sample amplitude')
title('discrete form of analog input signal')

subplot(3,2,2);
stem(m,real);
xlabel('frequency domain index of DFT output')
ylabel('DFT amplitude')
title('DFT output signal')


subplot(3,2,3);
disp('magnitude: ');
disp(mag);
stem(n,mag)
xlabel('n')
ylabel('Amplitude')
title('Amplitude Spectrum')

%P = mag.^2;   ---another way
disp('power spectrum');
disp(P);
subplot(3,2,4);
stem(n,P)
grid on;
xlabel('n')
ylabel('|P(m)|');
title('Power Spectrum')

subplot(3,2,5);
disp('phase');
disp(phase);
stem(n,phase);
grid on;
xlabel('n')
ylabel('|phase(m)|');
title('Phase Spectrum');