clc;
//A=[1 2 3;2 4 6;1 1 1];
//B=[4;8;6];
A=[1 1 -1;2 -1 1;-1 2 2]
B=[-2;5;1]
C=[A B]
n=3;
disp(C);

for i=1:n
    if C(i,i)==0 then
        C(i,:)=C(i,:)
    else
        for j=i+1:n
            C(j,:)=C(j,:)-(C(j,i)/C(i,i))*C(i,:)
            printf("\n")
            disp(C)
        end
    end
end

printf("\n REF \n");
disp(C)
ra=rank(1:3,1:3)
rc=rank(1:4,1:3)

printf("Rank of A=%g\n",ra);
printf("Rank of C=%g\n",rc);

if(ra<>rc)
    printf("No solution\n")
elseif(ra==rc && rc<>n)
    printf("Infinite\n");
else
    printf("Unique\n");
end

z=C(3,4)/C(3,3)
y=(C(2,4)-C(2,3)*z)/C(2,2)
x=(C(1,4)-C(1,3)*z-C(1,2)*y)/C(1,1)

printf("x = %g\n",x)
printf("y = %g\n",y)
printf("z = %g\n",z)
