clc;
clear;
close all;

% Load image
img = imread('cameraman.tif');
yres = size(img, 1);
xres = size(img, 2);
pixels = xres * yres;
figure;
imshow(img);
title('Image');

% Find probability
prob = [(imhist(img)/pixels)'; 0:255]';
figure;
plot(prob(:,1));
title('Histogram');
