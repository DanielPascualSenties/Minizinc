var bool: Huey;
var bool: Dewey;
var bool: Louie;

constraint Dewey == Louie;
constraint Huey -> Dewey;
constraint not(Dewey /\ Louie);

solve satisfy;

