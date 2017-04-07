function Ip = HW1_7b(I, a)
% function Ip = HW1_7b(I, a)
% Inputs:
%   I = image to be transformed
%   a = factor to use in shearing
% Output:
%   Ip = transformed image
d = size(I);
if size(d)>2
    I = rgb2gray(I);
end
I = double(I);
rows = d(1);
columns = d(2);
yc = d(1)/2;
for y = 1:columns
    for x = 1:rows
        xp = round(x+a*(y-yc));
        yp = y;
        if xp>0 && xp<=rows && yp<=columns && yp>0
            Ip(xp,yp) = I(x,y);
        end
    end
end
return