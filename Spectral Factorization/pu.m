function [x,y]= pu(a)

aah = a*a';
aha =a'*a;

if aah == aha 
    
   [vx,vc,vq,vd]=zheng(a);




x=vx;

y=vc*vd*vq;


else
    
    

[v,d] = eig(a);
k=rank(v);
c = inv(v);
y=zeros(k,k);
x=zeros(k,k);
for g=1:k
 e=d(g,g)*v(:,g)*c(g,:);
  x=x+e;
disp(e);
 end
end
end
