clc
clear all
A=[5 -2 3; -3 9 1; 2 -1 -7];
B=[-1; 2;3];
n=7;
x=0;
y=0;
z=0;
for i=1:n
printf("\nIteration number %g:",i);
X=(B(1)-A(1,2)*y- A(1,3)*z)/ A(1,1)
Y=(B(2)-A(2,1)*x- A(2,3)*z)/ A(2,2)
Z=(B(3)-A(3,1)*x- A(3,2)*y)/ A(3,3)
printf("\n value of x=%g", X)
printf("\n value of y=%g", Y)
printf("\n value of z=%g", Z)
x=X
y=Y
z=Z
end
