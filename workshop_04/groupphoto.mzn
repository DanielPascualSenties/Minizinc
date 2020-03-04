int: n;
int: largo = (n div 2);
int: ancho = 2;
array[1..n,1..n] of bool: friend;

set of int: person = 1..n;
array[1..n] of var 1..n: foto;
array[1..n] of var 0..3: amigosAdyacentes;
 
constraint forall(i,j in person where i != j)(foto[i] != foto[j]);
constraint amigosAdyacentes[1]=bool2int(friend[foto[1],foto[2]])+bool2int(friend[foto[1],foto[1+largo]]);
constraint amigosAdyacentes[n]=bool2int(friend[foto[n],foto[n-1]])+bool2int(friend[foto[n],foto[n-largo]]);
constraint forall (i in 2..n-1)(amigosAdyacentes[i] = bool2int(friend[foto[i],foto[i+1]])+bool2int(friend[foto[i],foto[i-1]])+bool2int(friend[foto[i],foto[i+largo mod n]])); 


solve satisfy;

output["La foto tendrá ", show(ancho) ," filas de ", show(largo), " personas.", "\n",show(foto), "\n",show(amigosAdyacentes)];