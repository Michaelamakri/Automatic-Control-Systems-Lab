clc;
close all;
num=[1 8 8]
den=[1 7 4]
[a,b,c,d]=tf2ss(num,den);
h=ss(a,b,c,d);
dcgain(h)
bode(h);
grid on
t=0:0.01:12;
y=step(h,t)
plot(t,y)
hold on
grid on

