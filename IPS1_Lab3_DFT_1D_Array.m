clc; 
clear;  

% program1 
% Write Matlab program for Discrete Fourier Transform  
% (1 Dimension) of the following values ( samples ):   
f = [2 3 4 4];  
N = length(f); 
F = [];  

for u = 1:N 
F(u) = 0; 
for x = 1:N 
F(u) = F(u) + f(x) * exp(-2j * pi * (u-1) * (x-1) / N); 
end 
end 
F = F / N; 
disp('DFT:'); 
disp(F);  
spect = sqrt(real(F).^2 + imag(F).^2); 
disp('Spect:'); 
disp(spect); 


% program2  
% Write Matlab program for Inverse of Discrete Fourier Transform  
% (1Dimension) and find the spectrum of these pixels: 
f_inv = zeros(1, N); 
for u = 1:N 
for v = 1:N 
f_inv(u) = f_inv(u) + F(v) * exp(2j * pi * (u-1) * (v-1) / N); 
end 
end 
disp('DFT Inverse:'); 
disp(round(f_inv)); 
