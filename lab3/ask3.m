clear all;
clc;
close all;

num = [1 1];
den = [1 0 0];

h = tf(num,den);
figure(1)
rlocus(h)
sgrid(0.7,0)
%k = 1.96

figure(2)
rlocus(h)
sgrid(0.64,1.5)
%το k ειναι 2.23 εως 4.44
