close all;
clear;
clc;

H = tf(20,[1 2 30]);
w = {0.1,100};
bode(H,w);
[mag,ph,fr]=bode(H,w);
maxi = max(mag);
y = db2mag(maxi);
grid on;
bw = bandwidth(H);

for c = 1:1000
    if mag(c)== max(mag)
        break
    end
end
fprintf('Max = %d\n',maxi);
fprintf('Wr = %d\n',fr(c));