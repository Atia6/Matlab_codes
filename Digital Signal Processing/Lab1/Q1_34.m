% Program P1_6
% Generation of amplitude modulated sequence
clf;
n = 0:100;	
m = 0.4;fH = 0.1; fL = 0.01;				
xH = sin(2*pi*fH*n);
xL = sin(2*pi*fL*n);
y = (1+m*xL).*xH;
stem(n,y);grid;
xlabel('Time index n');ylabel('Amplitude');
n1 = 0:100;	
m1 = 0.4;fH1 = 0.1; fL1 = 0.01;				
xH1 = sin(2*pi*fH1*n);
xL = sin(2*pi*fL1*n);
y = (1+m1*xL1).*xH1;
stem(n1,y);grid;
xlabel('Time index n1');ylabel('Amplitude');