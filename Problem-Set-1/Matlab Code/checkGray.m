function N = checkGray(A, Ng)
% function N = checkGray(A, Ng)
% Inputs:
%   Ng = number of possible gray values
%   A = some image to get the grayscale from
% Outputs:
%   N = vector of size Ng with occurances of each grayscale value
% A = rgb2gray(A);
A = double(A);
[rows, columns] = size(A);
h = zeros(rows*columns,1);
% for each grayscale value, add to spot in the vector
N = zeros(Ng,1);
for j=1:columns
    for i=1:rows
        h(i+(j-1)*rows) = A(i,j);
        v = A(i,j)+1;
        N(v) = N(v)+1;
    end
end

figure();
histogram(h);title('Histogram of grayscale values');xlabel('Grayscale value');
ylabel('number of pixels')

return