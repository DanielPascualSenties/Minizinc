% num ciudades 
n=5; 
 
%ciudad origen 
ini=2; 
 
%ciudad destino 
fin=4; 
 
% longitud máxima de un recorrido 
% (número de ciudades máximo) 
max=2*n; 
 
% dinero que cuesta ir de x a y: 
t[x,y] 
t=[|     0, 1000,   -1, 1100,   -1 |
      1000,    0,   -1, 2200,   -1 |
        -1,   -1,    0, 3200,   -1 |   
      1500, 1000,   -1,    0,   -1 |        
        -1, 1000,   -1, 1200,    0 |];