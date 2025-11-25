clear all;
clc;

x = 0:0.01:5;   
syms y(x)
Dy = diff(y);
ode = diff(y,x,2)+4*diff(y,x)+4*y==heaviside(x);
cond1 = y(0)==0;
cond2 = Dy(0)==0;
ySol(x)=dsolve(ode,cond1,cond2);
fplot(ySol(x),[0,5])