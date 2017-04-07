function [r,c] = m2rc(m, R, C)
% function [r,c] = m2rc(m, R, C)
% This function takes in m, which is a function of r and c and returns r
% and c

r = mod(m,R);
c = floor(m/R) + 1;

return