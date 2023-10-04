%complete
%simpsons 1/3 rule
h= 1/6;
x = [0:h:1];
y = cos(x);
n = 7;

sumy=0;
sumy1 = 0;
h1 = h/3;

%sum of even positiones terms
for i = 3:2:n-1
    
    sumy = y(i) + sumy;
end
%sum of odd positiones terms
for j = 2:2:n-1
    
    sumy1 = sumy1 + y(j);
end

sim1 = h1 *(y(1)+2*sumy + 4* sumy1 + y(n))