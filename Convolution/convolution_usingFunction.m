clc
clear all
close all

x=input('enter the first sequence ');
h=input('enter the second sequence ');

y = conv(x,h);

subplot(3,1,1);
stem(x);
xlabel('a');
ylabel('input sequence');
title('first sequence');

subplot(3,1,2);
stem(h);
xlabel('a');
ylabel('impulse sequence');
title('second sequence');

subplot(3,1,3);
stem(y);
xlabel('c');
ylabel('output sequence');
title('convolution between two sequences');

%{
x = [1 2 1 1];
h = [1 - 1 -1];
N1 = length(x);
N2 = length(h);
X = [x, zeros(1,N2)];
H = [h, zeros(1,N1)];

for i=1:N1+N2-1         
   y(i)=0;         
   for j=1:N1             
     if(i-j+1>0)                 
       y(i)=y(i)+X(j)*H(i-j+1);                          
     end  
   end     
end     
stem(y);     
ylabel('y[n]');     
xlabel('------>n');     
title('convolution of two signal'); 
%}