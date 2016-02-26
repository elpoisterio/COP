clc;
clear all;
close all;

t1 = 0;
h = 0.01;
tn = 80;
u= 700;
theta = 30;
ga = -9.8;
thetarad = theta*(pi/180);
vx1 = u* cos(thetarad);
vy1 = u* sin(thetarad);

gy =@(t,y,vy) -ga;
fy =@(t,y,vy) vy;

gx =@(t,x,vx) 0;
fx = @(t,x,vx) vx

[y] =heumfunc(gy,fy,t1,0,vy1,h,tn);
[x] = heumfunc(gx,fx,t1,0,vx1,h,tn); 

plot(x,y);