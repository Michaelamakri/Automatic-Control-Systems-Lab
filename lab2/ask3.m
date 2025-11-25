clear all;
clc;

J = 0.01;
b = 0.1;
Kt = 0.01;
R = 1;
L = 0.5;
t = 0:0.01:3;
ki = 70;
kp = 50;
kd = 1;

num = [Kt];
den = conv([J b],[L R]);
den(end) = den(end)+Kt*Kt;
e = tf(num,den)
H = tf(e)

C = pid(kp,ki,kd)
G = feedback(series(C,H),1)
step(G)
stepinfo(G)