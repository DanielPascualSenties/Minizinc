include "inverse.mzn";
include "alldifferent.mzn";

int: n = 40;

array[1..n] of var 1..n: order;
array[1..n-1] of var 1..n-1: dif;
array[1..n] of var 1..n: pos;
array[1..n-1] of var 1..n-1: dpos;

constraint alldifferent(order);
constraint alldifferent(dif);
constraint alldifferent(pos);
constraint alldifferent(dpos);

constraint forall( i in 1..n-1)(dif[i] = abs(order[i]-order[i+1]));

constraint abs(pos[1]-pos[n-1]) = 1; 
constraint dpos[n-1]= min(pos[1],pos[n]);


constraint inverse(order,pos);
constraint inverse(dif,dpos);
solve satisfy;

output[show([order[i]| i in 1..n]),"\n  ",show(dif),"\n", show(pos)];


