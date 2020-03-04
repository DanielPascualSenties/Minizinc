% variables
var float: R;        % lo que se paga por mes
var float: P;        % préstamo (dinero prestado inicialmente)
var 0.0 .. 10.0: I;  % interés

% intermediate variables
var float: B1; % balance tras un mes 
var float: B2; % balance tras dos meses
var float: B3; % balance tras 3 meses
%var float: B4; % balance tras 4 meses


constraint B1 = P * I - R;
constraint B2 = B1 * I - R;
constraint B3 = B2 * I - R; 
%constraint B4 = B3 * I;% - R;

solve satisfy;

%output [
% "Borrowing ", show_float(0, 2, P), " at ", show(I*100.0), 
% "% interés,  pagando ", show_float(0, 2, R), 
%  "euros \nal mes durante 4 meses. Se deben ", show_float(0, 2, B4), " euros\n"
%];
