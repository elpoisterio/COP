function var = interpolation_self(v1,s,v)

n=2;
summation =0;
for i=1:n+1
  product =1;

  for j=1:n+1
   if(i~=j)
   product = product*((v1-v(j))/(v(i)-v(j)));
   end
  end
  summation += s(i)*product;
  
end
var = summation ;
end