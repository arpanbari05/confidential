clc
clear all
A=[10 -2 -1 -1; -2 10 -1 -1; -1 -1 10 -2; -1 -1 -2 10];
B=[3; 15;27;-9];
n=10;
x=0;
y=0;
z=0;
w=0;
for i=1:n
printf("\nIteration number %g:",i);
X=(B(1)-A(1,2)*y- A(1,3)*z-A(1,4)*w)/ A(1,1)
Y=(B(2)-A(2,1)*x- A(2,3)*z -A(2,4)*w)/ A(2,2)
Z=(B(3)-A(3,1)*x- A(3,2)*y-A(3,4)*w)/ A(3,3)
W=(B(4)-A(4,1)*x- A(4,2)*y-A(4,3)*z)/ A(4,4)
printf("\n value of x=%g", X)
printf("\n value of y=%g", Y)
printf("\n value of z=%g", Z)
printf("\n value of w=%g", W)
x=X
y=Y
z=Z
w=W
end
