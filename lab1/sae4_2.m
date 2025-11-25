num=[1];
den=[1 4 4];
[A,B,C,D]=tf2ss(num,den);
sys=ss(A,B,C,D);
t=[0:0.01:5];
step(sys,t)