clc;
clear;

% program3  
% Create binary image and rotate it by 30, 90, 180 
% Then display all images in one figure used subplot 

f1 = [ones(200,100), zeros(200,100)]; 
fr30  = imrotate(f1, 30); 
fr90  = imrotate(f1, 90); 
fr180 = imrotate(f1, 180); 

figure 
subplot(2,2,1),imshow(f1),title('Original'); 
subplot(2,2,2),imshow(fr30),title('rotated 30'); 
subplot(2,2,3),imshow(fr90),title('rotated 90'); 
subplot(2,2,4),imshow(fr180),title('rotated 180'); 
