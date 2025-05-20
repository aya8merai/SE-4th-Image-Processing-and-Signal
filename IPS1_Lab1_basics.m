clc; 
clear; 

% Program1 
% Read the information and the data of the image,  
% and also display the data and show the image. 

info = imfinfo('cameraman.tif'); 
% This ^^^^^^^ reads all the information of the image 
disp(info); 

f = imread('cameraman.tif'); 
% Reads all the image's pixels 

imshow(f); 
% ^^^^ Shows the image
