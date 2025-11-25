clc;
close all;
%clear all;
num=[20];
den=[1 2 30];
[a,b,c,d]=tf2ss(num,den);
h=ss(a,b,c,d);
w={0.1,100}
bode(h,w)
[mag ,ph]=bode(h,w)
m1=max(mag)
y=db2mag(m1)
grid on
bw=bandwidth(h)


