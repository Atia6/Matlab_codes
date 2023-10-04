% Program P1_4
% Generation of a sinusoidal sequence
n = 0:40;	
f = 0.1;			
phase = 0;			
A = 1.5;			
arg = 2*pi*f*n - phase; 
x = A*cos(arg);
sum(x(1:10).*x(1:10))/10 = 1.1250 