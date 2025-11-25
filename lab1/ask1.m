clear all;
clc;

%a erwthma
num = [1];
den = [1 10];
e = tf(num,den);
ans = ss(e)


%b erwthma
num2 = [3 10 1];
den2 = [1 8 5];
e2 = tf(num2,den2);
ans2 = ss(e2)

