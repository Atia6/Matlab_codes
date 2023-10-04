% Program Q1_41B
% Generation of the square wave in Fig. 1.1(b)
n = 0:30; 
f = 0.1; 
phase = 0;
duty=30;
A = 2.5; 
arg = 2*pi*f*n + phase; 
x = A*square(arg,duty);
clf; % Clear old graph
stem(n,x); % Plot the generated sequence
axis([0 30 -3 3]);
grid; 
title('Square Wave Sequence of Fig. 1.1(b)');
xlabel('Time index n');
ylabel('Amplitude');
axis;
