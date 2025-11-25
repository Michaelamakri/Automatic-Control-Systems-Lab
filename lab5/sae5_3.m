clc;
close all;
num=[100];
den=[conv([1 0],[1 1])];
[a,b,c,d]=tf2ss(num,den);
h=ss(a,b,c,d);
w=logspace(0.1,1000,0.01)
bode(h,w)
[mag ,ph]=bode(h,w)
m1=max(mag)
y=db2mag(m1)
grid on
bw=bandwidth(h)

