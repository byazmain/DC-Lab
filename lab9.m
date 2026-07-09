clc;
clear;
close all;


exp = input('Enter an Expression in format(A*sin(2*pi*f*t)): ','s');
tokens = regexp(exp,'(\d+)\*sin\(2\*pi\*(\d+)\*t','tokens');

A = [];
f = [];

for i = 1:length(tokens)
    A(i) = str2double(tokens{i}{1});
    f(i) = str2double(tokens{i}{2});
end

stem(f,A,'filled','LineWidth',2);
grid on;
xlabel('Frequency(Hz)')
ylabel('Amplitude')
axis([0 max(f+10) 0 max(A+5)]);