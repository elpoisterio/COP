function [var,vary] = euler(f,x1,y1,h,xn)
x = x1:h:xn;
n = length(x);
y = zeros(1,n);
y(1) = y1;
for i=1:n-1
  y(i+1) =y(i)+h*f(x(i),y(i));
end
var =x;
vary = y;