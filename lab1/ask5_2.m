A=[0 1;-2 -3];
B=[0 ; 1];
C=[1 0];
D=0;
[num,den]=ss2tf(A,B,C,D);
tf1=tf(num,den);

printsys(num,den)
t=0:0.01:10;
u=5*cos(t);
lsim(tf1,u,t);
