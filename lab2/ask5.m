clear all;
clc;

b = 50;
m = 1000;
ki = 50;
kp = 5000;
kd = 0;
t = 0:0.01:20;

%A ERVTHMA
% H(s) = 1/(b+m*s)

%B ERVTHMA
num = [1];
den = [1000 50];
e = tf(num,den);
H = ss(e);
C = pid(kp,ki,kd)
G = feedback(series(C,H),1);
f = 10*ones(size(t));
[y,tout,x] = lsim(G,f,t);
plot(t,y)
stepinfo(G)
