%simpsons 1/3 rule

x= 0: .125 : 2;

y= (1+x).^(-1);
n = 17;

h= 0.125;
sumy=0;
sumy1 = 0;
h1 = h/3;
for i = 3:2:n-1
    i
    sumy = y(i) + sumy;
end

for j = 2:2:n-1
    
    sumy1 = sumy1 + y(j);
end

sim1 = h1 *(y(1)+2*sumy + 4* sumy1 + y(n))