var bool: n1;
var bool: n2;
var bool: n3;

constraint n1 -> n2\/n3;
constraint n1 -> not (n2 /\ n3); 

constraint n2 -> not (n1 \/ n3);

constraint n3 -> not n1;   
constraint n3 -> not n2;
constraint n3 -> not n3;

constraint not n1 -> not (n2/\n3);

constraint not n2 -> (n2/\n3)\/(not n1 /\ not n3);

constraint not n3 -> (n1 \/ n2);


solve satisfy;
