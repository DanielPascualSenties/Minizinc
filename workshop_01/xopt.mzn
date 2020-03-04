var 0..10: x;
var int: y;
%var 0..2: n;

constraint x mod 4 == 0;
%constraint n*4 == x;

constraint y = (x-7)*(x-7);
solve minimize y;

output ["x = ", show(x),"\n", "(x-7)^2 = ", show(y)]