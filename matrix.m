clc;
clear all;
close all;

A = [1 3 4;3 4 5;6 7 8];
B = [7;8;9];
Aug = [A B]
[big,i]=max(abs(Aug(1:2,3)))
%X = GaussNaive(A,B)