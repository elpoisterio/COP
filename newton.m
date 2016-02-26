function var = newton(v)
 n =5;
 b = zeros(n,n);
 b(:,1)=v;
 
 for j=2:n
  for i = 1 :(n-j+1)
   b(i,j) = (b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i))
  end
 end
 for k=2:n+1
  x = 
 end