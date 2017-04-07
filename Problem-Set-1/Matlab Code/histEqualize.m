function Ip = histEqualize(I, Ng)
d = size(I);
if size(d)>2
    I = rgb2gray(I);
end
h = computeNormalizedHist(I,Ng);
c = runningSum(h);
Ip = zeros(d(1),d(2));
for j = 1:d(2)
    for i = 1:d(1)
        Ip(i,j) = round(Ng*c(I(i,j)+1));
    end
end
return