close all;
clc;

[a,b,c,d] = tf2ss([1 8 8],[1 7 4]);
h = ss(a,b,c,d);
w = {0.1,100};
fprintf('DCGain = %d\n',dcgain(h));
figure(1)
bode(h,w);
grid on
t = 0:0.01:12;
y= step(h,t);
figure(2)
plot(t,y)
hold on
grid on
stepinfo(h)

[mag,ph]=bode(H,w);
maxi = max(mag);
y = db2mag(maxi)
