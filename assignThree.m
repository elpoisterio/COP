clc;
clear all;
close all;

v = [0.10377,0.11144,0.12547,0.11800]; %m^3/kg
s = [6.4147,6.5453,6.7664]; % kj/kgK
p = 200; %MPa
v1 = 0.118;
var = interpolation_self(v1,s,v);
s(4) = var;
plot(v,s);
hold on;
plot(v(4),s(4),'rs');
