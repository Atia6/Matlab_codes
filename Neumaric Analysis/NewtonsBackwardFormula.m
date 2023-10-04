
% taking all the necessary inputs %
x1=input('Enter starting value of x:  ');
h= input('Intervel:  ');
x2=input('Ending value of x:  ');
x=x1:h:x2;
[c,n]=size(x); % counting the number of elements using SIZE command %
for i=1:n
    y(i,1)=input('Enter corresponding values of y:  ');
end
for j=2:n
    for i=j:n
        y(i,j)=y(i,j-1)-y(i-1,j-1); % formula to calculate backward difference
    end
end 
% print backward difference table
fprintf('\n******backward difference formula table****');
fprintf('\n\tx\t    y\t');
for i=1:n
    fprintf('\n   %.4f',x(i));
    for j=1:i
        fprintf('\t   %.4f',y(i,j));
    end
end
xr = input('\nEnter data to find value: ');
p= (xr-x2)/h

yr = y(1,8) + p*y(2,8) + p*(p+1)*y(3,8) + (p*(p+1)*(p+2)*y(4,8))/2 + (p*(p+1)*(p+2)*(p+3)*y(5,8))/6 + (p*(p+1)*(p+2)*(p+3)*(p+4)*y(6,8))/24  + (p*(p+1)*(p+2)*(p+3)*(p+4)*(p+5)*y(7,8))/120   + (p*(p+1)*(p+2)*(p+3)*(p+4)*(p+5)*(p+6)*y(8,8))/720  