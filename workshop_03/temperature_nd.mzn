array[int] of int: readings;
int: start;
int: data= 5;

array[0..data] of var 10..40: temperature;


constraint temperature[0] = start;
constraint forall (i in 1..data) (temperature[i] = (temperature[i-1] + readings[i]) div 2); 

solve satisfy;