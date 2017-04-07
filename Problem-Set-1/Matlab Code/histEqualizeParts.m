function Ip = histEqualizeParts(I, Ng, P)
% function Ip = histEqualizeParts(I, Ng, P)
% Inputs:
%   I = image to equalize
%   Ng = range of potential grayscale values
%   P = location of the peaks
% Outputs:
%   Ip = image equalized by parts from one peak to the next
d = size(I);
rows = d(1);columns = d(2);
if size(d)~=2
    I = rgb2gray(I);
end
I = double(I);
Ip = zeros(rows,columns);

span = zeros(length(P)+1,1);
factor = zeros(length(P)+1,1);
range = zeros(length(P)+1,1);
start = zeros(length(P)+1,1);
finish = zeros(length(P)+1,1);

h = computeHist(I,Ng);

P = [1; P; Ng];

for i = 1:(size(P)-1)
    high = P(i+1); low = P(i);
    span(i) = high - low;
    s = sum(h((P(i)+1):P(i+1)));
    factor(i) = span(i)*log10(s);
end

sfactor = sum(factor);

for i = 1:(size(P)-1)
    range(i) = (Ng-1)*factor(i)/sfactor;
    if i == 1
        start(i) = 1;
    else
        start(i) = ceil(sum(range(1:(i-1)))+2);
    end
    finish(i) = ceil(sum(range(1:i))+1);
end

hp = zeros(length(h),1);

count = 1;

for i = 1:length(h)
    hp(i) = start(count) + (finish(count)-start(count))*sum(h(start(count):i))/sum(h(start(count):finish(count)));
    if i == finish(count)
        count = count+1;
    end
end

for j = 1:columns
    for i = 1:rows
        Ip(i,j) = round(hp(I(i,j)+1));
    end
end

Mi = sum(sum(I));
Mo = sum(sum(Ip));
Ip = (Mi/Mo).*Ip;

return