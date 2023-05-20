%%Ejercicio 3
%% a)
x0=0.5;
y0=0.5;
z0=0.5;
a=1;
b=1;
c=1;
d=-sqrt(3);
%%Ecuacion distancia al plano
dp= abs(a*x0+b*y0+c*z0+d)/sqrt(a^2+b^2+c^2)



%%b)
C=linspace(0,1,10000);  %%vector de c variable de [0,inf)
x0=0.5;
y0=0.5;
z0=0.5;
a=1;
b=1;
c=C;
d=0;

dp= abs(a*x0+b*y0+c*z0+d)./sqrt(a^2+b^2+c.^2);
minimo=min(dp)
hold on
plot(C,dp,'linewidth',2)
title('Distancia Plano','fontsize',14)       
xlabel('C','fontsize',14)
ylabel('distancia al plano','fontsize',14)
grid on
hold off

