% Testing the periodic distance function
clear
% Create test array
test = zeros(50,50);
test(10,10) = 1;
test(40,10) = 1;
test(25,40) = 1;

% Euclidean distance
De = periodicBinaryDist(test, 'e');

% 4-Neighbor distance
D4 = periodicBinaryDist(test, 4);

% 8-Neighbor distance
D8 = periodicBinaryDist(test, 8);

figure(2);colormap default
subplot(221); imagesc(test);axis image;colorbar
title('Image')
subplot(222); imagesc(De);axis image;colorbar
title('Euclidean');
subplot(223); imagesc(D4);axis image;colorbar
title('City Block (D4)');
subplot(224); imagesc(D8);axis image;colorbar
title('Chessboard (D8)');