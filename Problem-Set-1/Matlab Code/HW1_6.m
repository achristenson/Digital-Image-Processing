I1 = imread('aircraft.jpg');
figure(1);subplot(3,1,1);histogram(I1);title('Histogram of aircraft.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

Ip1 = histEqualize(I1, 256);
subplot(3,1,2);histogram(Ip1);title('Equalized histogram of aircraft.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

% Peaks at: 49,112,175
P1 = [49;112;175];

Ipp1 = histEqualizeParts(I1,256,P1);
subplot(3,1,3);histogram(Ipp1);title('Part equalized histogram of aircraft.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

I2 = imread('beach.jpg');
figure(2);subplot(3,1,1);histogram(I2);title('Histogram of beach.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

Ip2 = histEqualize(I2, 256);
subplot(3,1,2);histogram(Ip2);title('Equalized histogram of beach.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

% Peaks at: 70,167,197,247
P2 = [70;167;197;247];

Ipp2 = histEqualizeParts(I2,256,P2);
subplot(3,1,3);histogram(Ipp2);title('Part equalized histogram of beach.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

I3 = imread('butterfly.jpg');
figure(3);subplot(3,1,1);histogram(I3);title('Histogram of butterfly.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

Ip3 = histEqualize(I3, 256);
subplot(3,1,2);histogram(Ip3);title('Equalized histogram of butterfly.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

% Peaks at: 50,80
P3 = [50;80];

Ipp3 = histEqualizeParts(I3,256,P3);
subplot(3,1,3);histogram(Ipp3);title('Part equalized histogram of butterfly.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

I4 = imread('city.jpg');
figure(4);subplot(3,1,1);histogram(I4);title('Histogram of city.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

Ip4 = histEqualize(I4, 256);
subplot(3,1,2);histogram(Ip4);title('Equalized histogram of city.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

% Peaks at: 75,160
P4 = [75;160];

Ipp4 = histEqualizeParts(I4,256,P4);
subplot(3,1,3);histogram(Ipp4);title('Part equalized histogram of city.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

I5 = imread('palermo.jpg');
figure(5);subplot(3,1,1);histogram(I5);title('Histogram of palermo.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

Ip5 = histEqualize(I5, 256);
subplot(3,1,2);histogram(Ip5);title('Equalized histogram of palermo.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');

% Peaks at: 17,21,25
P5 = [17;21;25];

Ipp5 = histEqualizeParts(I5,256,P5);
subplot(3,1,3);histogram(Ipp5);title('Part equalized histogram of palermo.jpg');
xlabel('Grayscale Value');ylabel('Number of pixels');