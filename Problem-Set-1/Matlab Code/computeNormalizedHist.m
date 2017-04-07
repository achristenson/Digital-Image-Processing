function h = computeNormalizedHist(I, Ng)
h = computeHist(I,Ng);
[rows, columns] = size(I);
n = rows*columns;
for i = 1:Ng
    h(i) = h(i)/n;
end
return