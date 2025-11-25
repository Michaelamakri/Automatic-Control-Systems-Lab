num=[90];
den=[conv([1 1],[1 1])]
[a,b,c,d]=tf2ss(num,den);
h=ss(a,b,c,d);
bode(h);
grid on

[Gm,Pm,Wcg,Wcp]=margin(h)
t=0:0.01:10
y=step(h,t)
plot(t,y)
stepinfo()
