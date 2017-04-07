function m = calcm(r, c, R, C)
% function m = calcm(r, c, R, C)
% This function takes in r = row, c = column, R = number of rows, C =
% number of columns, of an image and returns m, a variable used to access
% the pixels using one variable

m = r + R*(c-1);

return