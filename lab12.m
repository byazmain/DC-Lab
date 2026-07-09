clc;
clear;
close all;

t = 0:0.0005:1;
Am = 1;
Fm = 5;
m = Am*sin(2*pi*Fm*t);

Ac = 1;
Fc = 70;
c = Ac*sin(2*pi*Fc*t);

kp = 3*pi;
pm = Ac*sin(2*pi*Fc*t + kp*m);


figure;
subplot(3,1,1);
plot(t,m);
grid on;
title('Message Signal');

subplot(3,1,2);
plot(t,c);
grid on;
title('Carrier Signal');


subplot(3,1,3);
plot(t,pm);
grid on;
title('Modulated Signal');

