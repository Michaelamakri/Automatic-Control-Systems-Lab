num=[1 7];
den=conv([1 0 0],[1 10]);
[A,B,C,D]=tf2ss(num,den);
H=ss(A,B,C,D);
t=0:0.01:25;
u=t;
[y,tout,x]=lsim(H,u,t)
p=pole(H);
disp(p)


