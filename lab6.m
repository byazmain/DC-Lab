clc;
clear;
close all;

b = input('Enter Binary Sequence : ','s');
b = b - '0';
n = length(b);
t = 0:0.001:n;

b_p = 2*b-1;
for i = 1:n
    bw(i*1000:(i+1)*1000) = b_p(i);
end
bw = bw(1000:end);

figure;
subplot(2,1,1);
plot(t,bw);
axis([0 n -2 +2]);
title('Binary Wave');
xlabel('Time(sec)');
ylabel('Amplitude')

lastbit = 1;
for j = 1:n
    if b(j)==1
        lastbit = -lastbit;
        x(j*1000:(j+1)*1000) = lastbit;
    else
        x(j*1000:(j+1)*1000) = lastbit;
    end
end
x = x(1000:end);


subplot(2,1,2);
plot(t,x);
axis([0 n -2 +2]);
title('Polar NRZ-I')
xlabel('Time(sec)');
ylabel('Amplitude')