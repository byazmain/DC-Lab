clc;
clear;
close all;

t = 0:0.0005:1;
Am = input('Enter Amplitude : ');
Fm = input('Enter Frequency : ');
m = Am*sin(2*pi*Fm*t);

Ac = 1;
Fc = 50;
c = Ac*sin(2*pi*Fc*t);

kf = 10;
pd = 2*pi*kf*cumsum(m)*0.005;
pm = Ac*sin(2*pi*Fc*t + pd);


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

