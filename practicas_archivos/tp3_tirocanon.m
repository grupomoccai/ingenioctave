clear
close all

%% Primer caso, ang = pi/3 y v0 = 100 m/s.
ang1 = pi/3;
ang2 = pi/4;
ang3 = pi/6;
v0 = 100;
g = 9.8;
t = linspace(0,20,100);
x = cos(ang1) * v0 * t;
y1 = sin(ang1) * v0 * t - (g/2) * t.^2;
y2 = sin(ang2) * v0 * t - (g/2) * t.^2;
y3 = sin(ang3) * v0 * t - (g/2) * t.^2;

hold on
plot(x,y1,'r','linewidth',2)
plot(x,y2,'b','linewidth',2)
plot(x,y3,'g','linewidth',2)
ylim([0 1000])
hold off
