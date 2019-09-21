clc
clear all
close all

%unit impulse signal
n = -100:100;
delta_n = [zeros(1,100) 1 zeros(1,100)];    % delta_n = n==0; 
subplot(3,2,1);
stem(n,delta_n);
xlabel('n');
ylabel('Amplitude');
title('unit impulse signal');

%unit step signal
N=20;
y = ones(1,N);
n = 0:1:N-1;
subplot(3,2,2);
stem(n,y,'b','Linewidth',0.5);
xlabel('n');
ylabel('y(n)');
axis([-20 n(end) 0 2]);
title('unit step signal');

%unit ramp signal
t=0:9; %by default increasing by 1
subplot(3,2,3);
stem(t,t);
xlabel('t');
ylabel('amplitude');
axis([-10 t(end) 0 t(end)]);
title('unit ramp signal');


%{
ramp signal using loop 
for i = -10:1:10;
  if i>=0
    stem(i,i);
    hold on;
  else
    stem(i,0);
    hold on;
  endif;
endfor
%}

%sinusoidal sequence
t=0:0.1:pi;
y=sin(2*pi*t);
y1=cos(2*pi*t);
subplot(3,2,4);
stem(t,y);
xlabel('t');
ylabel('y');
title('sine sequence');

subplot(3,2,5);
stem(t,y1);
xlabel('t');
ylabel('y');
title('cosine sequence');

%Exponential signal
n=-20:20;
x_n = 0.8 .^n    % for 0<x<1, x.^n is decreasing and for x>1, x.^n is increasing 
subplot(3,2,6);
stem(n,x_n);
xlabel('n');
ylabel('x_n');
title('decreasing Exponential signal');


