array[int] of int: readings;
int: start;
int: data=length(readings);
array[0..data] of var 10..40: expectedTemperature;
array[0..data] of var 16..22: temperature;
array[0..data] of var 0..90: coste;
array[1..data] of var 1..5:choice;
var 0..90*data:ctotal;

constraint expectedTemperature[0] = start;
constraint forall (i in 1..data) (expectedTemperature[i] = (temperature[i-1] + readings[i]) div 2); 

constraint temperature[0] = start;
constraint forall (i in 1..data)((temperature[i]= expectedTemperature[i])\/(temperature[i]= expectedTemperature[i]+1)\/(temperature[i]= expectedTemperature[i]+4)\/(temperature[i]= expectedTemperature[i]-2)\/(temperature[i]= expectedTemperature[i]-5));

constraint forall (i in 1..data)((temperature[i]= expectedTemperature[i]) <-> choice[i] = 5);
constraint forall (i in 1..data)((temperature[i]= expectedTemperature[i]+1) <-> choice[i] = 1);
constraint forall (i in 1..data)((temperature[i]= expectedTemperature[i]+4) <-> choice[i] = 2);
constraint forall (i in 1..data)((temperature[i]= expectedTemperature[i]-2) <-> choice[i] = 3);
constraint forall (i in 1..data)((temperature[i]= expectedTemperature[i]-5) <-> choice[i] = 4);

constraint forall (i in 1..data)(choice[i]=5 <-> coste[i] = 0);
constraint forall (i in 1..data)(choice[i]=1 <-> coste[i] = 10);
constraint forall (i in 1..data)(choice[i]=2 <-> coste[i] = 50);
constraint forall (i in 1..data)(choice[i]=3 <-> coste[i] = 30);
constraint forall (i in 1..data)(choice[i]=4 <-> coste[i] = 90);

constraint ctotal = sum(coste);
solve minimize ctotal;

output["temp = ",show(temperature),";","\n","choice = ", show(choice),";","\n","cost = ", show(ctotal),";"];