clear all;
clc;

A = [0 1;-2 -3];
B = [0;1];
C = [1 0];
D = 0;

e= ss(A,B,C,D);
t = 0:0.05:10;
u = 5*cos(t);

%a erwthma
figure1 = figure(1);
hold on;
grid on;
[y,tout,x] = lsim(e,u,t,[1;0]);
plot(t,y)

%b erwthma
figure2 = figure(2);
grid on;
plot(t,x(:,1),t,x(:,2));

legend("x1","x2");

%c erwthma
figure3 = figure(3);
grid on;
subplot(2,1,1);
plot(t,x(:,1));
ylabel("x1");
xlabel("Time");
subplot(2,1,2);
plot(t,x(:,2));
ylabel("x2");
xlabel("Time");


