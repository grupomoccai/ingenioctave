close all;
clear all; 

f1 = 'x^2/49 + y^2/9 -1';
f2 = 'abs(x/2)-((3*sqrt(33)-7)/112)*x^2-3+sqrt(1-(abs(abs(x)-2)-1)^2)';
f3 = '9-8*abs(x)';
f4 = '3*abs(x)+0.75';
f5 = '6*sqrt(10)/7+(1.5-.5*abs(x))*sqrt(abs(abs(x)-1)/(abs(x)-1))-(6*sqrt(10)/14)*sqrt(4-(abs(x)-1)^2)';

figure(1);clf
hold on
c(1) = ezplot(f1, [-7 -3 -2.5 0]);
c(2) = ezplot(f1, [-7 -3 0 2.8]);
c(3) = ezplot(f1, [3 7 -2.5 0]);
c(4) = ezplot(f1, [3 7 0 2.8]);
c(5) = ezplot(f2,[-4 4]);
c(6) = ezplot(f3,[-1 -0.75]);
c(7) = ezplot(f3,[0.75 1 ]);
c(8) = ezplot(f4,[-0.75 -0.5 2.25 3]);
c(9) = ezplot(f4,[ 0.5 0.75 2.25 3]);
c(10) = ezplot(f5,[-3 -0.75]);
c(11) = ezplot(f5,[0.75 3]);
c(12) = line([-0.5,0.5],[2.25,2.25]);
set(c,'linewidth',10)
xlim([-8 8])
ylim([-4 4])
colormap([0 0 1])
grid on

title('INTRO OCTAVE','fontsize',30);
xlabel('TUTORES','fontsize',30);
%ylabel('Y','fontsize',14);
hold off