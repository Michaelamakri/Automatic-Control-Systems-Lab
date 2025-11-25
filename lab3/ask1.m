clc;
close all;
clear;

t1 = tf([1],[1 4 6 1]);
t2 = tf([1 1 1],conv([1 0],[1 4 6]));
den = conv(conv([1 0],[1 2]),conv([1 4],[1 9]));
t3 = tf([1 7],den);
figure(1)
rlocus(t1);
figure(2)
rlocus(t2);
figure(3)
rlocus(t3);
