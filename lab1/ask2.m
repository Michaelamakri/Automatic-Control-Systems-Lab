clear all;
clc;

%a erwthma
A = [0 1;2 4];
B= [1;1];
C = [1 0];
D = 0;
[num,den] = ss2tf(A,B,C,D);
e = tf(num,den)

%b erwthma
A = [1 1 0;-2 0 4;6 2 10];
B= [0;1;1];
C = [0 1 0];
D = 0;
[num2,den2] = ss2tf(A,B,C,D);
e = tf(num2,den2)