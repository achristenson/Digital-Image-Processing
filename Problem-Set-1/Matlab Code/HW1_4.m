% Testing the checkgray function with some images
I1 = imread('aircraft.jpg');
G1 = checkGray(I1,256);

I2 = imread('beach.jpg');
G2 = checkGray(I2,256);