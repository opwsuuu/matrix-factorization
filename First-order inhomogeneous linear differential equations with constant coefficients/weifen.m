function [y,l]= weifen(x,a,f)
n=length(x);
l=zeros(n,1);
syms y t b r ;

[p1,p2]=e(a,t);

p4=inv(p1);
l=p1*p2*p4*x;
syms o;
o=t-r;
[q1,q2]=e(a,o);
q3=inv(q1);
q4=q1*q2*q3;

y=l+int(q4*f,r,0,t); 



end
