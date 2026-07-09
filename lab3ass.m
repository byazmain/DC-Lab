clc;
clear;
close all;

b = input('Enter Binary Sequence: ','s');
b = b - '0';
n = length(b);
t = 0:0.001:n;

for i = 1:n
    bw(i*1000:(i+1)*1000) = b(i);
end
bw = bw(1000:end);

figure;
subplot(3,1,1);
plot(t,bw);
grid on;
axis([0 n -2 2]);
title('Binary Wave');
xlabel('Time');
ylabel('Amplitude');

sint = sin(2*pi*t);

subplot(3,1,2);
plot(t,sint);
grid on;
axis([0 n -2 2]);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');

f0 = 5;
f1 = 10;

for j=1:length(t)
    if bw(j)==1
        x(j) = -sin(2*pi*f1*t(j));
    else
        x(j) = sin(2*pi*f0*t(j));
    end
end

subplot(3,1,3);
plot(t,x);
grid on;
axis([0 n -2 2]);
title('Modulated Signal(by fsk)');
xlabel('Time');
ylabel('Amplitude');