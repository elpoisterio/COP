clc;
close all;
clear all;
f=@(x) x^3-x-1;
x1=1;
x2=2;
c= (x1+x2)/2;
tol=1e-10;
if f(x1)*f(x2)>0 
    disp('Wrong choice')
else
   it=0;
   while(abs((x1-x2)/x1)>tol && it<30)
       it = it+1;
       x3=(x1+x2)/2;
       if f(x1)*f(x3)<0
           x2=x3;
       else
           x1=x3;
       end 
   end 
end
