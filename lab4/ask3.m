close all;
clear;
clc;

G = tf([10],[1 1]);
G2 = tf([9],[1 1]);
H = G*G2;
w = {0.1,100};
bode(H,w);
[Gm,Pm,Wcg,Wcp] = margin(H);
t = 0:0.1:10;
gs = feedback(H,1);
y = step(gs,t);
plot(t,y)
grid on;
s = stepinfo(gs)
fprintf('pososto uperupswshs = %d\n',s.Overshoot);
