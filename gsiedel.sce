
A = [5 -2 3; -3 9 1; 2 -1 -7];
// A = [6, 2, -2; 1, 5, 2; 2, 1, 4];
B = [4; 3; 27];
// B = [-1; 2; 3];
n = 3;
x = 0;
y = 0;
z = 0;
for i = 1:n
    printf("\nIteration number %d:", i);
    X = (B(1) - A(1,2) * y - A(1,3) * z) / A(1,1);
    x = X;
    printf("\n value of x=%g", X);

    Y = (B(2) - A(2,1) * x - A(2,3) * z) / A(2,2);
    y = Y;
    printf("\n value of y=%g", Y);
    
    Z = (B(3) - A(3,1) * x - A(3,2) * y) / A(3,3);
    z = Z;
    printf("\n value of z=%g", Z);
end

printf("\nFinal values after %d iterations:", n);
printf("\n x=%g", x);
printf("\n y=%g", y);
printf("\n z=%g", z);
