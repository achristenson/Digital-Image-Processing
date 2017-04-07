I1 = imread('beach.jpg');
G1 = histEqualize(I1,256);
figure()
subplot(2,1,1);imagesc(I1);colormap(gray);title('Original Grayscale Image');
subplot(2,1,2);imagesc(G1);colormap(gray);title('Histogram Equalized Image');
