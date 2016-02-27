clc;
clear al;
close all;

a = [11,2,3;10,5,6;9,8,9];
b = [1;2;3];
[m,n] = size(a);
for k = 1:n-1
% partial pivoting
[big,i]=max(abs(a(k:n,k)));
ipr=i+k-1;
if ipr~=k
a([k,ipr],:)=a([ipr,k],:);
end
end
%x = GaussNaive(a,b);