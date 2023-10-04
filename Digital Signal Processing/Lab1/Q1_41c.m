% Program Q1_41C
% Generation of the square wave in Fig. 1.2(a)
n = 0:50; 
f = 0.05; 
phase = 0;
peak = 1;
A = 2.0; 
arg = 2*pi*f*n + phase; 
x = A*sawtooth(arg,peak);
clf; % Clear old graph
stem(n,x); % Plot the generated sequence
axis([0 50 -2 2]);
grid; 
title('Sawtooth Wave Sequence of Fig. 1.2(a)');
xlabel('Time index n');
ylabel('Amplitude');
axis;