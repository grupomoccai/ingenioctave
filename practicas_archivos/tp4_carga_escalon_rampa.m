function b = tp4_carga_escalon_rampa(t)
% function b = tp5_ej2_carga3_escalon_sol(t)
% Esta funcion devuelve para cada instante de tiempo 
% el vector de carga del sistema de 5 reactores quimicos.
% La funcion modela el comportamiento de la tercer 
% componente de "b" en forma de un pulso escalon negativo.
% Introduccion Octave - 2023 - FCAI-UNCuyo
% 

if t<10
  b = [1;0;4;0;0];
elseif t<40
  b = [1;0;3;0;0];
elseif t<100
  b = [1;0;3+(t-40)/60;0;0];
else
  b = [1;0;4;0;0];
end