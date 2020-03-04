var 1..100:b;
var 1..100:o;
var 1..100:a;
var 1..100:m;
var 2..100: sum;

constraint b+a+o+m = 100;
constraint (3 * (b div 5))+(5 * (o div 7))+(7 * (m div 9))+(9 * (a div 3)) = 100;
constraint b mod 5 = 0;
constraint o mod 7 = 0;
constraint m mod 9 = 0;
constraint a mod 3 = 0;
constraint sum = a+b;

solve minimize sum;


