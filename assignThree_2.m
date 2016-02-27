clc;
clear all;
close all;
 i = [-1,-0.5,-0.25,0.25,0.5,1];
 v = [-637,-96.5,-20.5,20.5,96.5,637];
 i1 = 0.10;
 n = length(i);
 n1 = length(v);
 y = newton(i,v,i1);
 
 
 