% Testing the functions made
R = 4; C = 4; r = 2; c = 3;
matrix = ones(R,C);
f1D = matrix(:);
m = calcm(r,c,R,C);
[r,c] = m2rc(m, R, C);
f = reshape(1:(R*C),R,C);

% Testing the function using the modified Shepp-Logan image
p = phantom ('Modified Shepp-Logan', 32);
R1 = 32;
C1 = 32;
M1 = R1*C1;
m1 = calcm(r,c,R1,C1);
[rOut,cOut] = m2rc(m1, R1, C1);
f1 = reshape(1:M1,R1,C1);
p1D = p(:);
pUnvectorized = zeros(32);
for i = 1:32
    for j = 1:32
        pUnvectorized(i,j) = p1D(calcm(i,j,R1,C1));
    end
end
if pUnvectorized == p
    disp('Works!')
else
    disp('Fails :(')
end