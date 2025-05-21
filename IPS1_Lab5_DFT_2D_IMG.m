clc; 
clear;  
% Program 2  
% Apply DFT (2 Dimension Square) to the following points  
f = [0 0 1 0;  
2 0 0 0;  
0 3 0 0;  
0 1 0 2];  
[M, N] = size(f); 
F = zeros(N);  
for u = 1: N         
for v = 1: N 
F(u,v) = 0; 
for x = 1: N             
for y = 1: N 
F(u,v) = F(u,v)+f(x,y)*exp(-2j*pi*(((u-1)*(x-1)+(v-1)*(y-1))/N)); 
end 
end 
end 
end 
F = F / (N);  
disp('DFT:'); 
disp(F);  
spect = abs(F);  
disp('Spect:'); 
disp(spect); 
% INVERTION 
fnew = zeros(N); 
for x = 1: N         
for y = 1: N 
fnew(x,y) = 0; 
for u = 1: N             
for v = 1: N 
fnew(x,y) = fnew(x,y)+F(u,v)*exp(2j*pi*((u-1)*(x-1)+(v-1)*(y-1))/N); 
end 
end 
end 
end 
fnew = round(fnew/N); 
disp('Inverse: '); 
disp(fnew); 
