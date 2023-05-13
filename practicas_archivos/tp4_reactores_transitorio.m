% Ingeniate en Octave - 2019 - FCAI-UNCuyo
% 
% Trabajo Practico 4 - Ejercicio 5
%
% Respuesta transitoria o dinamica de la red de 5 reactores 
% de la figura 12.3 (Chapra y Canale, 5ta Ed, 2007).
close all
clear all

% Q01 c01 =  50 mg/min
% Q03 c03 = 160 mg/min
% Volumen de los 5 tanques:
% V1= 50 m3, V2 = 20 m3, V3 = 40 m3, V4 = 80 m3 y V5 = 100 m3

% Sistema de cinco reactores acoplados como en la figura 12.3.
A=[  0.12  0.000 -0.020 0.0000  0.000;
    -0.15  0.150  0.000 0.0000  0.000;
     0.00 -0.025  0.225 0.0000  0.000; 
     0.00  0.000 -0.100 0.1375 -0.025; 
    -0.03 -0.010  0.000 0.0000  0.040];
   
b =[1;0;4;0;0];

f =@(c) (b-A*c);

N = 10000;
tt=linspace(0,150,N);
c0=zeros(5,1);


% ===================EJERCICIO ===========================
% El tiempo hasta el estado estacionario se caracteriza
% por el tiempo que tarda cada reactor en alcanzar el 90%
% de la concentracion en el estado estacionario: t90.
%   1) La carga en el reactor 3 decrece en un 25% de forma abrupta en t=10min.
%      Luego de media hora se comienza a restablecer el valor de entrada de
%      forma progresiva mediante una rampa de carga, de tal forma que se retoma
%      el valor de trabajo nominal pasada una hora.
%       1.1) Cree una funcion carga_escalon_rampa.m que modele el valor 
%            en la entrada b(t) en funcion del tiempo. Grafique b(t).
%       1.2) determine las respuestas transitorias y grafique estas 

c90 = 0.90 * (A\b);

% === 1.1)  Funcion carga_escalon_rampa
bEsc3 = zeros(N,1);

for i=1:N
  bEscRampa(i) = tp4_carga_escalon_rampa(tt(i))(3);
end

figure(1);clf
plot(tt,bEscRampa,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('b_3 (mg/(s m3))','fontsize',24)
ylim([0 4])
h=legend('b_3(t)');
set(h,'fontsize',24);
set(gca,'fontsize',24)

% === 1.2) Respuestas transitorias
f=@(c,t) (tp4_carga_escalon_rampa(t)-A*c);

Ct= lsode(f,c0,tt);

figure(2);clf
plot(tt,Ct,'linewidth',4)
xlabel('t (min)','fontsize',24)
ylabel('c (mg/m3)','fontsize',24)
h=legend('c_1','c_2','c_3','c_4','c_5');
set(h,'fontsize',24);
set(gca,'fontsize',24)