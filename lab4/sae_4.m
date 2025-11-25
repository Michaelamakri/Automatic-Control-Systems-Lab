clc;
close all;
num=[1 1];
den=[1 0 0];
H=tf(num,den);
sgrid(0.7)
rlocus(H);
[r,k]=rlocus(H);
plot(r,'x');
disp(k)