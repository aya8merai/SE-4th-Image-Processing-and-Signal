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
end 
fnew = round(fnew); 
