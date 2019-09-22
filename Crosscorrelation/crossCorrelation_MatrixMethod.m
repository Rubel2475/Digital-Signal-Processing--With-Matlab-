clc
clear all
close all

%x = input('Enter the first array: ');
%h = input('Enter the second array: ');
x = [2,-1,3,7,1,2,-3];
x_sampleIndex = 0:6 ; % index range
h = [1,-1,2,-2,4,1,-2,5];
h_sampleIndex = 0:7 ;
h = fliplr(h);
h_sampleIndex = -fliplr(h_sampleIndex);

z = [];

for i=1:length(x)
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