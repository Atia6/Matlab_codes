%program for fitting a straight line 
%entering no. of observed points 
n=input('How many points '); 
%taking input 
for i=1:n 
x(i)=input('value of x '); 
 y(i)=input('value of y '); 
end 
%calculating coefficients 
sumx=0; 
sumy=0; 
sumxy=0; 
sumxsq=0; 
for i=1:n 
sumx=sumx+x(i); 
sumy=sumy+y(i); 
sumxy=sumxy+x(i)*y(i); 
sumxsq=sumxsq+x(i)^2; 
end 
format long ; 
%calculating a1 and a0 
a1=(n*sumxy-sumx*sumy)/(n*sumxsq-sumx^2) 
a0=sumy/n-a1*sumx/n 
%plotting observed data 
plot(x,y,'o') 
hold on; 
%plotting fitted data
ym=a0+a1.*x; 
plot(x,ym);