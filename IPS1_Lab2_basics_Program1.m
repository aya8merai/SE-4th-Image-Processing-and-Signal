clc;  
clear;  
% program1  
% Display the image in figure, and rotate, resize, and crop the image. 
% Then display all images in one figure used subplot  
f1 = imread('cameraman.tif');  
fr = imrotate(f1,30);  
fs = imresize(f1,[50 50]);  
fc = imcrop(f1,[50 50 100 100]); 
figure  
subplot(2,2,1),imshow(f1),title('original');  
subplot(2,2,2),imshow(fr),title('rotated');  
subplot(2,2,3),imshow(fs),title('resized');  
subplot(2,2,4),imshow(fc),title('crop');
