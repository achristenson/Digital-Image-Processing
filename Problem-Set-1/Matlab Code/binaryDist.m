function D = binaryDist(f, T)
% function D = binaryDist(f, T)
% Inputs:
%   f = some binary image
%   T = the method of calculating distance
%       e = euclidean distance
%       4 = four nearest neighbors
%       8 = eight nearest neighbors
% Output:
%   D = image of same size as f with distances from 1 mapped using T method

% Get the number of rows and columns in f
[rows,columns] = size(f);
% Initialize the distance image
D = zeros(rows,columns);

% Cycle through the columns and rows
for n = 1:columns
    for m = 1:rows
%       Set d to some number larger than the maximum distance at
%       every initial point
        d = rows*columns;
%       Search the matrix input for ones
        for j=1:columns
            for i=1:rows
%               If theres a one, calculate the distance and save
%               the smallest distance
                if(f(i,j) == 1)
%                   Use a dummy variable to get the smallest distance
%                   Use a switch to calculate the right type of distance
                    switch T
                        case 'e'
                            Dum = ((i-m)^2 + (j-n)^2)^(1/2);
                        case 4
                            Dum = abs(i-m) + abs(j-n);
                        case 8
                            Dum = max(abs(i-m),abs(j-n));
                        otherwise
                            D = NaN;
                            disp('Not a valid type of distance measurement')
                            return
                    end
                    d = min(Dum, d);
                end
            end
        end
%       update the point in the new image with the distance
        D(m,n) = d;
    end
end
return
