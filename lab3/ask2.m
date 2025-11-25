clear all;
clc;
close all;

num = [1 -2 2];
den = conv([1 0],[1 3 2]);

g = tf(num,den);
rlocus(g);

%το K ειναι 0.79 για την μεγιστη τιμη κερδους