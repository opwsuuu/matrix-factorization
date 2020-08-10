function [g,b,j]=e(d,t)



[g,j] = jordan(d);
j=sym(j);

n=length(j);
b=eye(n,n);
syms d b ;
for q=1:n
    b(q,q)=exp((j(q,q))*t);      
end

for q=1:n-1
    
   if j(q,q)==j(q+1,q+1)&&j(q,q+1)~=0
  b(q,q+1)= (t)*(exp(j(q,q)*t));
   end
end

for q=2:n-1
   for u=1:n-q
      if b(u,u+q-1)==b(u+1,u+q)&&b(u,u+q-1)~=0
          
       b(u,u+q)= (t^q)*(exp(j(u+q-1,u+q-1)*t))/(factorial(q)); 
          
      end
   end
    
    
end



end
