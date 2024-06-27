A = [2 1 3; 1 2 3; 3 3 20];

[VEC, VAL] = spec(A);

printf("The Eigenvalues are :\n");
disp(round(VAL));
printf("The Eigenvectors are :\n");
disp(round(VEC));
