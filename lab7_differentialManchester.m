clc;
clear;
close all;

b = input('Enter a binary sequence : ','s')
b = b - '0';
n = length(b);
t = 0:0.001:n;

b_p = 2*b-1;

for i = 1:n
    bw(i*1000:(i+1)*1000)=b_p(i)
end
bw = bw(1000:end);

figure;
subplot(2,1,1);
plot(t,bw);
title('Binary Wave');
axis([0 n -2 2]);

lastbit = 1;
for i = 1:n
    if b(i)==1
        x(i*1000:(i+0.5)*1000)=lastbit;
        lastbit = - lastbit;
        x((i+0.5)*1000:(i+1)*1000)=lastbit;
    else
 
        x(i*1000:(i+0.5)*1000)=-lastbit;
        x((i+0.5)*1000:(i+1)*1000)=lastbit;
    end
end
x = x(1000:end);


subplot(2,1,2);
plot(t,x);
title('Differential Manchester Encoding');
axis([0 n -2 2]);