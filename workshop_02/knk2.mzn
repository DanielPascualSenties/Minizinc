var bool: n1;
var bool: n2;
var bool: n3;

constraint n1 -> not n2;
constraint n1 -> not n3;

constraint n2 -> not (n1 /\ n3);
constraint n2 -> n1 \/ n3;

constraint n3 ->  n1;   
constraint n3 ->  n2;

constraint not n1 -> ((not (n2\/n3))\/(n2/\n3));

constraint not n2 -> not (n1/\n3);

solve satisfy;
