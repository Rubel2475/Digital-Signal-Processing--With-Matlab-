clc
clear all
close all

x_sampleIndex = -2:2; % index range
x=[1 2 3 4 8];     %{ x = input('Enter the first array: ');  ---- for unit impulse signal> x = x_sampleIndex>=0; %}
h_sampleIndex = 0:2;
h = [1 2 3];     %h = input('Enter the second array: ');

z = [];

for i=1:length(x)
  g = h .* x(i);
  z = [z;g];
endfor

[row colm] = size(z);
total_rc = row+colm;
check=2;
y = [];
added_value = 0;

while(check<=total_rc)
  for i=1:row
    for j=1:colm
      if (i+j)==check
        added_value = added_value + z(i,j);
      endif
    endfor
  endfor
  y = [y added_value];
  check=check+1;
  added_value=0;
endwhile;

disp(y);

final_n = min(x_sampleIndex)+min(h_sampleIndex) : max(x_sampleIndex)+max(h_sampleIndex);
stem(final_n,y);