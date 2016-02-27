function var = interpolation_self(v1,x,v)

n=2;
summation =0;
product =1;
for i=1:n+1
  for j=1:n+1
   if(i~=j)
   product = product*((v1-v(j))/(v(i)-v(j)));
   end
  end
  summation += x(i)*prod;
  
end
var = summation ;
end