clc
clear all
close all

X = [1 -1 3 -2];

N=4;
y=zeros(4,1);
for n = 0:N-1
    for m = 0:N-1
        y(n+1) = y(n+1) + X(m+1)*exp(j*2*pi*n*m/N);
    end
end

for j=0:N-1
  y(j+1)= (1/N)*y(j+1);
end;
disp(y);

n=0:N-1
subplot(2,1,1)
disp('IDFT ouput- discrete time domain signal values')
disp(y);
stem(n,y);
xlabel('discrete time domain index');
ylabel('x(n)');
title('IDFT ouput signal');