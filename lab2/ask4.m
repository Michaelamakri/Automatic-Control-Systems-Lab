clear all;
close all;
clc;

numg = [-1 -5];
deng = conv([1,0],[1 3.5 6]);
eg = tf(numg,deng);
hg = ss(eg);
numm = [-10];
denm = [1 10];
em = tf(numm,denm);
hm = tf(em);
CS = 2;
H = feedback(series(hm*CS,hg),1);
t = 0:0.01:10;
u = 0.5*t;
[y,tout,x] = lsim(H,u,t);
subplot(2,1,1)
plot(t,y)
grid on;
title("A ERWTHMA");

%% b ervthma

ki = 1;
kp = 5;
kd = 50;
C = pid(kp,ki,kd);
G = feedback(series(C,H),1);
[y,tout,x] = lsim(G,u,t);
subplot(2,1,2)
plot(t,y)
grid on;
title("B ERWTHMA");