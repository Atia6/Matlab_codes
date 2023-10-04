clc;
clear all;
close all;
x=[0.25:0.1:0.95]; %x values
[m,n]=size(x);
y=[0 0.001 0.018 0.412 3.9 8.5 10.2 12.5];  %y values
sx=0;
sy=0;
sxy=0;
sx2=0;
sx3=0;
sx4=0;
sx5=0;
sx6=0;
sxsqy=0;
sxcuby=0;
for i=1:n
sx=sx+x(i);
sy=sy+y(i);
sxy=sxy+x(i)*y(i);
sx2=sx2+x(i)^2;
sx3=sx3+x(i)^3;
sx4=sx4+x(i)^4;
sxsqy=sxsqy+y(i)*x(i)^2;
sx5=sx5+x(i)^5;
sxcuby=sxcuby+y(i)*x(i)^3;
sx6=sx6+x(i)^6;
end
format compact;
%linear regression
disp('The equation for Linear regression: y=a0+a1*x')
fprintf('\nWhere,\n')
a1=(n*sxy-sx*sy)/(n*sx2-sx^2);
a0=sy/n-a1*sx/n;
ym=a0+a1*x;
X=[1.05 1.15];
Y=a0+a1*X;
fprintf('The value of a0 is: %f\nThe value of a1 is: %f\n',a0,a1)
fprintf('\nThe values of y for x equal to 1.05 and 1.15 are: \n%f\n%f\n',Y(1),Y(2))
%2nd order regression
fprintf('\nThe equation for 2nd order polynomial regression: y= a0+a1*x+a2*x^2\n')
fprintf('\nWhere,\n')
cof=[n sx sx2;sx sx2 sx3;sx2 sx3 sx4];
con=[sy;sxy;sxsqy];
A=inv(cof)*con;
y2m=A(1)+x.*A(2)+(x.^2)*A(3);
Y2=A(1)+X.*A(2)+(X.^2)*A(3);
for i=1:size(A,1)
    fprintf('The value of a%d is: %f\n',i-1,A(i))
end
fprintf('\nThe values of y for x equal to 1.05 and 1.15 are: \n%f\n%f\n',Y2(1),Y2(2))
%3rd order regression
fprintf('\nThe equation for 3rd order polynomial regression: y= a0+a1*x+a2*x^2+a3*x^3\n')
fprintf('\nWhere,\n')
coef=[n sx sx2 sx3;sx sx2 sx3 sx4;sx2 sx3 sx4 sx5;sx3 sx4 sx5 sx6];
cons=[sy;sxy;sxsqy;sxcuby];
Aa=inv(coef)*cons;
y3m=Aa(1)+x.*Aa(2)+(x.^2)*Aa(3)+(x.^3)*Aa(4);
Y3=Aa(1)+X.*Aa(2)+(X.^2)*Aa(3)+(X.^3)*Aa(4);
for i=1:size(Aa,1)
    fprintf('The value of a%d is: %f\n',i-1,Aa(i))
end
fprintf('\nThe values of y for x equal to 1.05 and 1.15 are: \n%f\n%f\n',Y3(1),Y3(2))
%Plotting data
title('linear regression','FontSize',20)
plot(x,y,'o')
hold on
plot(x,ym,'g')
hold on
plot(x,y2m,'k')
hold on
plot(x,y3m)
legend('given data','linear regression','2nd order regression','3rd order regression','location','southeast')

%Residuals calculation
ry1=0;
ry2=0;
ry3=0;
for i =1:n
    res1 = ry1 + (y(i) - ym(i))^2;
    res2 = ry2+(y(i) - y2m(i))^2;
    res3 = ry3 + (y(i) - y3m(i))^2;
end
fprintf ('\nResidual for linear regression =%f\nResidual for 2nd order polynomial regression =%f\nResidual for 3rd order polynomial regression = %f',res1,res2,res3)
