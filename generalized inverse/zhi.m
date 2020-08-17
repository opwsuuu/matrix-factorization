function [b,c]=zhi(a)
aa = rref(a);
[m,n]= size(a);
z = rank(aa);
l = zeros(z,2);
h = 0;
y =1;
for i=1:m 
  for j=1:n
      if aa(i,j)==1
       l(y,:) = [i,j];
       h = h+1;
       y = y+1;
       break
      end    
  end    
end

c = zeros(h,n);

for u=1:h
    
        c(u,:)=aa(l(u,1),:);
      
end

b= zeros(m,h);

for o=1:h
    
    b(:,o)= a(:,l(o,2));


end
end
