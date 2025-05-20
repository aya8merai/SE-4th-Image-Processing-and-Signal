clc;  
clear;  

% program2  
% resize the image by using the following instruction  
% Then display all images in one figure used subplot  

f1 = imread('cameraman.tif');  
fs1 = imresize(f1,[400 400]);  
fs2 = imresize(f1,[100 100]);  
fs3 = imresize(f1,[25 25]);  

figure  
subplot(2,2,1),imshow(f1),title('original');  
subplot(2,2,2),imshow(fs1),title('resized X2');  
subplot(2,2,3),imshow(fs2),title('resized /2');  
subplot(2,2,4),imshow(fs3),title('resized /4'); 
