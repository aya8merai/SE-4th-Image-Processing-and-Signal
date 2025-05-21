% Program1 
% Apply DFT (2 Dimension - General) to the following points  
f = [0 0 1 0;  
2 0 0 0;  
0 3 0 0;  
0 1 0 2];  
[M, N] = size(f); 
j = sqrt(-1); 
F = zeros(M, N); 
for u = 1: M         
for v = 1: N 
F(u,v) = 0; 
for x = 1: M             
for y = 1: N 
F(u,v)=F(u,v)+f(x,y)*exp(-2j*pi*((u-1)*(x-1)/M+(v-1)*(y-1)/N)); 
end 
end 
end 
end  
F = F / (M*N);  
disp('DFT:'); 
disp(F); 
spect = abs(F);  
disp('Spect:'); 
disp(spect); 
% INVERTION 
fnew = zeros(1, N);   
for x = 1: M         
for y = 1: N 
fnew(x,y) = 0; 
for u = 1: M             
for v = 1: N 
fnew(x,y)=fnew(x,y)+F(u,v)*exp(2j*pi*((u-1)*(x-1)/M+(v-1)*(y-1)/N)); 
end 
end 
end 
end  
fnew = round(fnew);  
disp('Inverse: '); 
disp(fnew); 
