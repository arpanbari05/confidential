clc;
A=[1 3 2;2 7 7;2 5 2];
printf("The matrix A is:");
disp(A);
B=[2;-1;7];
printf("The matrix B is:");
disp(B);
C=[A B];
printf("The matrix C is:");
disp(C);
n=3;
for i=1:n
C(i,:)=C(i,:)/C(i,i);
printf("----------------\n");
disp(C);
for j=1:n-1
if i+j<n+1
C(i+j,:)=C(i+j,:)-C(i+j,i)*C(i,:);
end
end
printf("----------------\n");
disp(C);
end
for j=n:-1:2
for i=1:j-1
C(i,:)=C(i,:)-C(i,j)*C(j,:);
end
printf("----------------\n");
disp(C);

end
disp("x=");
disp(C(1,4));
disp("y=");
disp(C(2,4));
disp("z=");
disp(C(3,4));
