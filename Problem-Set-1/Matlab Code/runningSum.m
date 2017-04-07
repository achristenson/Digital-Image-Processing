function s = runningSum(a)
s(1) = a(1);
for i = 2:length(a)
    s(i) = s(i-1) + a(i);
end
return