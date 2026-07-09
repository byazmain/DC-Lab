clc;
clear;
close all;

t = 0:0.0005:1;

ym = 5*sin(2*pi*5*t);
subplot(3,1,1);
plot(t,ym);
title('Message Signal');
xlabel('Time(sec)');
ylabel('Amplitude');
grid on;

yc = 5*sin(2*pi*100*t);
subplot(3,1,2);
plot(t,yc);
title('Carrier Signal');
xlabel('Time(sec)');
ylabel('Amplitude');
grid on;

y = ym.*yc;
subplot(3,1,3);
plot(t,y);
title('Amplitude Modulated Signal');
xlabel('Time(sec)');
ylabel('Amplitude');
grid on;