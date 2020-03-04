int :dim = 9;
set of int: size= 1..dim;

array [size,size] of 0..dim:sudoku;
           
array [size,size] of  var 1..9:solution;



function var int: cuadrante(var int: i, var int: j) = 1+((i-1) div 3 + 3 * ((j-1) div 3));
%predicate mismocuadrante(var int:i,var int:j,var int:k,var int:l)= cuadrante[i,j] = cuandrante[k,l];

constraint forall(i,j in size)((sudoku[i,j]= 0)\/(solution[i,j] = sudoku[i,j]));
constraint forall(i,j,k in size where j < k)(solution[i,j] != solution[i,k]);
constraint forall(i,j,k in size where j < k)(solution[j,i] != solution[k,i]);
constraint forall(i,j,k,l in size where i < k)((cuadrante(i,j) != cuadrante(k,l))\/(solution[i,j] != solution[k,l]));


solve satisfy;

output [ show(solution[i,j]) ++ if j == dim then "\n" else " " endif | i in size, j in size ];