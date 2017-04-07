function Ip = translateRotateImage(I, tx, ty, theta)
% function Ip = translateRotateImage(I, x, y, theta)
% Inputs:
%   I = image to be rotated/shifted
%   tx = the vertical shift of the image, positive indicates downwards
%   ty = the horizontal shift of the image, positive indicates right
%   theta = rotation of the image, positive is counterclockwise
% Outputs:
%   Ip = the new image

d = size(I);
if size(d)>2
    I = rgb2gray(I);
end
rows = d(1);
columns = d(2);
I = double(I);
Ip = zeros(rows,columns);

cx = floor(rows/2);
cy = floor(columns/2);

for y = 1:columns
    for x = 1:rows
        xp = round((x-cx)*cos(theta) - (y-cy)*sin(theta)) + cx + tx;
        yp = round((x-cx)*sin(theta) + (y-cy)*cos(theta)) + cy + ty;
        if xp>0 && xp<=rows && yp>0 && yp<=columns
            Ip(xp,yp) = I(x,y);
        end
    end
end