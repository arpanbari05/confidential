clc();
//A = [1 2 3; 6 7 1; 16 17 1]; correct ans
A = [1 2 -1 3 ; 1 -1 1 -1 ; 2 -2 3 2 ; 3 -1 2 1]
n = 4
for i=1:n
    if A(i,i) == 0 then
        A(i,:) = A(i,:)
    else
        for j=i+1:n
            A(j,:) = A(j,:) - (A(j,i)/A(i,i)) * A(i,:)
            printf("\n")
            disp(A);
        end
    end
end
printf("\nRow Echelon Form : \n")
disp(A);
