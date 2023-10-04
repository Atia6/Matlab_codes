clc;
clear all;
close all;
disp('Bisection Methode')
a=input('X_upper=');
b=input('X_lower=');
i=0;
if f(a)*f(b) > 0
disp('Invalid iinputs')
end
c=(a+b)/2;
while((a-b)/2 > 0.0001)
    i=i+1;
    if f(c)*f(b) > 0
        b=c;
%         x=b;
%         y1=x^5+x+1;
    else
        a=c;
%         x=a;
%         y1=x^5+x+1;
    end
    c=(a+b)/2;
end
i
disp(c)
    
        
        