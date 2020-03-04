int :max = 5;
array[1..max] of var 0..91: bales;
constraint forall(i in 1..4)(bales[i]<= bales[i+1]);

constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 80);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 82);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 83);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 84);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 85);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 86);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 87);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 88);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 90);
constraint exists(i,j in 1..max where i!=j)(bales[i]+bales[j]= 91);

solve satisfy;