clear all;
clc;

figure(1)
t = 0:0.01:8;
num = [1 -3 2];
den = [1 4 3];
e = tf(num,den);
ans = ss(e)
step(ans,t)
hold on;
grid on;
gains = dcgain(e)
plot(t,gains*ones(size(t)),'r')