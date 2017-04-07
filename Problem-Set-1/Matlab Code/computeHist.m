function h = computeHist(I, Ng)
h = zeros(Ng,1);
[rows, columns] = size(I);
for j = 1:columns
    for i = 1:rows
        h(I(i,j)+1)=h(I(i,j)+1)+1;
    end
end
return