clc;
//a = [ 4 5 2 45 -37 ; 4 5 5 63 -55 ; 4 4 2 36 -40 ; 5 6 7 8 -9 ; 1 2 3 4 5 ] ;
//a =[0 0 0 0 ; 0 1 0 0 ; 0 0 2 0 ; 0 3 4 5]; correct ans except 0s row swapping
a = [4 5 2 45 -37;4 5 5 63 -55;4 4 2 36 -40;5 6 7 8 -9;1 2 3 4 5];
n = 5 
disp ( a ) 
for i = 1 : n 
    if a ( i,i ) == 0 
        for k = i + 1 : n 
            if a ( k,i ) <> 0 
                temp = a ( i, : ) 
                a ( i, : ) = a ( k, : ) ; 
                a ( k, : ) = temp 
                break ; 
            end 
        end 
    end 
    if a ( i,i ) <> 0 
        a ( i, : ) = a ( i, : ) / a ( i,i ) ; 
        printf("\n");
        disp ( a ) ; 
        for j = 1 : n 
            if i <> j 
                a ( j, : ) = a ( j, : ) - a ( j,i ) * a ( i, : ) ; 
            end 
        end 
    end 
end 
printf("\n");
disp ( a )
