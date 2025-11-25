close all;
clear;
clc;

T  = tf([100],[1 6 0]);
H = feedback(T,1);
w = logspace(-1,3,1000);
bode(H,w);
[mag,ph,fr] = bode(H,w);
maxi = max(mag);
for c = 1:1000
    if mag(c)== max(mag)
        break
    end
end
fprintf('Wr = %d\n',fr(c));
mr = db2mag(maxi);
grid on;
bw = bandwidth(H)