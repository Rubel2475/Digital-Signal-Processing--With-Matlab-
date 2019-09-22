clc
clear all 
close all

range_x = -2:2;
x=[1 2 3 4 8];
range_h = 0:2;
h=[1 2 3];

x_length = length(x);
h_length = length(h);

xn = [x, zeros(1,h_length-1)];
hn = [h, zeros(1,x_length-1)];

p = x_length+h_length-1;
y = zeros(1,p);

for n=1:p
  for k=1:n
    y(n) = y(n) + xn(k) .* hn(n-k+1);
  endfor
endfor

y

t = min(range_x)+min(range_h) : max(range_x)+max(range_h);
stem(t,y);
