% Program P3_37a
% Circular Convolution Property of DFT
g1 = [1 2 3 4 ]; g2 = [1 -2 3 3 ];
ycir = Circonv(g1,g2);
disp('Result of circular convolution = ');disp(ycir)
G1 = fft(g1); G2 = fft(g2);
yc = real(ifft(G1.*G2));
disp('Result of IDFT of the DFT products = ');disp(yc)
