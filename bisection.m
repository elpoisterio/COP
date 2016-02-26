function [var,f] = bisection(fp,x1,x2,tol)

 while abs((x1-x2)/x1) > tol
    x3 = (x1+x2)/2;
    if fp(x1)*fp(x3) <0
      x2=x3;
    else 
      x1=x3;  
  end
end
var = x3;
f = fp(var);