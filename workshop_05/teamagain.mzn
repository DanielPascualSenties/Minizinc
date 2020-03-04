int: n; % jugadores
int: m; % capitanes
array[1..m,1..n] of int: value;
array[1..n] of var 1..m: team;

array[1..m] of var 1..n: elems;

constraint forall(i in 1..m)(elems[i]= sum(team where team[j] < 7));




solve satisfy