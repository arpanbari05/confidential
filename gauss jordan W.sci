clc;
A=[8 9 2 9;2 7 3 5;4 3 6 6;2 5 6 8];
printf("The matrix A is:");

disp(A);
B=[42;45;53;63];
printf("The matrix B is:");

disp(B);
C=[A B];
printf("The matrix C is:");

disp(C);
n=4;
for i=1:n
C(i,:)=C(i,:)/C(i,i);
disp(C);
for j=1:n-1
if i+j<n+1
C(i+j,:)=C(i+j,:)-C(i+j,i)*C(i,:);
end
end
disp(C);
end
for j=n:-1:2
for i=1:j-1
C(i,:)=C(i,:)-C(i,j)*C(j,:);
end
disp(C);
end
disp("x=");
disp(C(1,5));
disp("y=");
disp(C(2,5));

disp("z=");
disp(C(3,5));
disp("w=");
disp(C(4,5));
