clear all;
clc;

num = [1 7];
den = conv([1 0 0],[1 10]);
e = tf(num,den);
H = ss(e);
t = 0:0.01:25;
u =t;
[y,tout,x]=lsim(H,u,t);
p = pole(H);
