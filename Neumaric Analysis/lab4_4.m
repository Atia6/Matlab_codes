%trapizoidal rule

x= 0: .125 : 2;

y= (1+x).^(-1);
n = 17;

h= 0.125;
sumy=0;
for i= 2:1:n-1
    
    sumy = y(i)+sumy;
  
end
sumy;
h1=h/2;

trap = h1*(y(1)+2*sumy+y(17));
disp(trap)



