t = [100 160 200 240 300 400 500];
e = [2506.7 2597.8 2658.1 2718.5 2810.4 2967.9 3131.6];

% Energia interna a 225°C
t1 = 225;
e1 = interp1(t,e,t1)

% Temperatura para E = 2735
e2 = 2735;
t2 = interp1(e,t,e2)