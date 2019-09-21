clc
clear all
close all

%x = input('Enter the first array: ');
%h = input('Enter the second array: ');
x = [1 2 3 4];
x_sampleIndex = 0:3 ; % index range
h = [4 3 4 3];
h_sampleIndex = 0:3 ;
h = fliplr(h);
h_sampleIndex = -fliplr(h_sampleIndex);

z = [];

for i=1:length(h)
  g = h .* x(i);
  z = [z;g];
endfor

[row colm] = size(z);
k = row+colm;
check=2;
y = [];
added_value = 0;

while(check<=k)
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
grid on;