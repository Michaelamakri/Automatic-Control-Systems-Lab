clear;
close all;
clc;

f = 5;
gc = tf([1 f],1);
h = tf(1,[1 0 0]);
Gs = series(h,gc);
tr_max = 0.3;
mp_max = 0.1;
z = sqrt(log(mp_max).^2/(pi.^2+log(mp_max).^2));
w = (2.16*z+0.6)/tr_max;
rlocus(Gs)
sgrid(z,w)
%για Κ=29.7 πληρουμε τις προυποθεσεις
kd_new = 29.7;
kp_new = f*kd_new;
gc_final = tf([kd_new kp_new],1);
step(feedback(series(gc_final,h),1))