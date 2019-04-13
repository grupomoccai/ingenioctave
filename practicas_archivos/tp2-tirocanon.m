
%% Primer caso, ang = pi/3 y v0 = 100 m/s.

%% x = cos(ang) * v0 * t
%% y = sen(ang) * v0 * t - (g/2) * t^2
%%
%% a = cos(ang) * v0
%% b = sen(ang) * v0
%% c = g/2

a = 50;
b = 86.603;
c = 4.9;

ezplot('50*t','86.603*t-4.9*t*t',[0,17.674])
