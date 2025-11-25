clear all;
clc;

t = 0:0.05:100;
m = 10;
b = 0.5;
k = 1;

A = [0 1; -k/m -b/m];
B = [0;1/m];
C = [1 0];
D =0;

S = ss(A,B,C,D);
y = lsim(S,ones(size(t)),t);

plot(t,y)