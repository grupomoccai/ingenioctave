%%Farenheit en funcion de Celsius
C=0:0.1:100;
F=1.8*C+32;
%%Celsius en funcion de Farenheit
f=32:0.1:212;
c=(f-32)/1.8;



figure(1)
plot(C,F,'linewidth',2)
title('Distancia Plano','fontsize',14)       
xlabel('Celsius','fontsize',14)
ylabel('Farenheit','fontsize',14)
grid on

figure(2)
plot(f,c,'linewidth',2)
title('Distancia Plano','fontsize',14)       
xlabel('Celsius','fontsize',14)
ylabel('Farenheit','fontsize',14)
grid on

deriv(F,C)
