var 0..100: men;
var 0..100: women;
var 0..100: children;

constraint men + women + children = 100;
constraint 6 * men + 4 * women + children = 200;
constraint 5*men = women;

solve satisfy;
output["Men = ", show(men),"\n", "Women = ", show(women),"\n", "Children = ", show(children)];   