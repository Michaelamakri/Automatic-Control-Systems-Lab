close all;
clear;
clc;


b = 50;
m = 1000;
ki = 0;
kp = 5;
kd = 0;
t = 1:0.01:50;

num = [1];
den = [1000 50];
e = tf(num,den);
H = ss(e);
C = pid(kp,ki,kd)
G = feedback(series(C,H),1);

f = 4*cos(0.2*t)
[y,tout,x] = lsim(G,f,t);

plot(t,y)
grid on;
