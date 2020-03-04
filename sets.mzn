set of int: COL = 1..5;
set of int: ROW = 1..2;

array[ROW,COL] of int:c = [|250,2,75,100,0|200,0,150,150,75|];
b = array2d(COL,ROW, c[j,i] | i in COL, j in ROW]);

solve satisfy ;