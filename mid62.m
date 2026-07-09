clc
clear
close all
b = [1 1 1 1 0 0 1];
n = length(b);
t = 0:0.01:n;
f1=5;
f0=2;
for i = 1:n
    bw(i*100:(i+1)*100) = b(i);
end
bw = bw(100:end);
phi = 2*pi*rand(1,n);
for i = 1:n
    phiw(i*100:(i+1)*100) = phi(i);
end
for j=1:length(t)
    if (bw(j) == 0)
        st(j)=sin(2*pi*f0*t(j)+ phiw(j));
    else
        st(j)=sin(2*pi*f1*t(j)+ phiw(j));
    end
end
subplot(2,1,1)
plot(t,bw)
grid on
axis([0 n -2 +2])
title('Bipolar Data Signal')
subplot(2,1,2)
plot(t,st)
grid on
axis([0 n -2 +2])
title('FSK Modulated Signal(non coherent)')