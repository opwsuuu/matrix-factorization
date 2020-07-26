function [x,v,q,d]=zheng(a)


[v,d] = eig(a);






[m,n]= size(v);
x=zeros(m,n);
e=zeros(m,n);


q=v';
for w=1:n   
    dd=d(w,w);
    e=v(:,w)*q(w,:);
   x=x+dd*e;
end




end
