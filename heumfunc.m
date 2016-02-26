function [y] = heumfunc(f,g,x1,y1,z1,h,xn)
x = x1:h:xn;
n = length(x);
y= zeros(1,n);
z=zeros(1,n);
%s1 = f(x1,y1,z1);
x(1)=x1;
y(1)=y1;
z(1)=z1;
for i=1:n-1
  s1 =f(x(i),y(i),z(i));
  p1 =g(x(i),y(i),z(i));
  s2 =f(x(i)+1,y(i)+h*s1,z(i)+h*p1);
  p2 =g(x(i)+1,y(i)+h*s1,z(i)+h*p1);
  y(i+1) = y(i)+(h/2)*(s1+s2);
  z(i+1) = z(i)+(h/2)*(p1+p2);
 end 
