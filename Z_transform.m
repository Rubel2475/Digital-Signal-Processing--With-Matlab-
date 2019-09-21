clc
clear all
close all

pkg load symbolic
sym 'z';
x = input('Enter the sequence x(n): ');
n_start = input('Enter the start value of n: ');
n_end = n_start+length(x)-1;
m = 1;
result = 0;
for n=n_start:n_end
  result = result + x(m)*(z^(-n));
  m = m + 1;
endfor
disp(result);

%{
sym 'z';
x = input('Enter the sequence x(n): ');
n1 = input('Enter the start value of n: ');
n2 = n1+length(x)-1;
m = 1;
result = 0;
for i=n1:n2
  result = result + x(m)*(z^(-i));
  m = m + 1;
endfor
disp(result);
%}