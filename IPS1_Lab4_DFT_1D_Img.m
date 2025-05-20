clc;
clear;  

% Apply Discrete Fourier Transform (1 Dimension) to the image   
f = double(imcrop(imread('cameraman.tif'),[40 40 99 99])); 
[r, c] = size(f); 
f = reshape(f, 1, r*c); 
%   ^^^^^^^ convert image dimensions 
N = length(f); 
F = zeros(1, N); 
for u = 1: N 
F(u) = 0; 
for x = 1: N 
F(u) = F(u) + f(x) * exp(-2j * pi * (u-1) * (x-1) / N);   
end 
end 
F = F / N; 
spect = abs(F); 
fnew = zeros(1, N); 
for x = 1: N 
fnew(x) = 0; 
for u = 1: N 
fnew(x) = fnew(x) + F(u) * exp(2j * pi * (u-1) * (x-1)/ N);         
end 

f_original = reshape(f, r, c); 
f2d_spect = reshape(spect, r, c); 
Fshift = fftshift(f2d_spect); 
f_inv = reshape(fnew, r, c); 
figure 
subplot(2,2,1),imshow(uint8(f_original)),title('Original'); 
subplot(2,2,2),imshow(f2d_spect),title('spectrum'); 
subplot(2,2,3),imshow(Fshift),title('spectrum with shift'); 
subplot(2,2,4),imshow(uint8(f_inv)),title('after inverse'); 

end 
fnew = round(fnew); 
