% Program Q1_16
% Generation of a real exponential sequence
clf;
n = 0:35; a = 1.2; K = 0.2;
x = K*a.^n;
energy = sum(x.*x)



n1 = 0:35; a1 = .9; K1 = 20;
x1 = K1*a1.^n1;
energy1 = sum(x1.*x1)
