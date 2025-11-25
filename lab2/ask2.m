clear all;
clc;
t = 0:0.01:30;
num1 = [4];
den1 = [1 0 4];
e1 = tf(num1,den1);
H1 = ss(e1);
hold on;
grid on;
subplot(2,2,1)
impulse(H1,t)
title("ωn=2 ζ=0");

num2 = [4];
den2 = [1 0.4 4];
e2 = tf(num2,den2);
H2 = ss(e2);
hold on;
grid on;
subplot(2,2,2)
impulse(H2,t)
title("ωn=2 ζ=0.1");

num3 = [1];
den3 = [1 0 1];
e3 = tf(num3,den3);
H3 = ss(e3);
hold on;
grid on;
subplot(2,2,3)
impulse(H3,t)
title("ωn=1 ζ=0");

num4 = [1];
den4 = [1 0.4 1];
e4 = tf(num4,den4);
H4 = ss(e4);
hold on;
grid on;
subplot(2,2,4)
impulse(H4,t)
title("ωn=1 ζ=0.2");
