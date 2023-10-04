clc;
clear all;
close all;
disp('Bisection Methode')
b=input('X_upper=');
a=input('X_lower=');
i=0;
step_size = Inf; % Set step_size to Inf to allow every e_step.
e_step = 1e-15; % User-specified error.
n = 0; % Variable used to count number of iterations.
 
% Main loop.
while (step_size >= 0.000001)
 c = b - (f(b)*(b-a)) / (f(b)-f(a));
 if f(a)*f(c) < 0
 % f(a) and f(c) have opposite signs, and so r is bracketed between a
 % and c. We set b=c and shorten our interval by b-c.
 step_size = b - c;
 b = c;
 else
 % f(a) and f(c) have the same sign, so r is bracketed between c and b.
 % We set a=c and shorten our interval by c-a.
 step_size = c - a;
 a = c;
 end
 n = n + 1; % Add one to number of iterations.
end
c
n