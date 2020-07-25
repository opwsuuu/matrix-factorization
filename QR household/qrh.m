function [q,r] = qrh(a)
g = a;
k = length(a);
y = eye(k,k);
q = eye(k,k);
h = eye(k,k);

for i=1:k-1
    u = eye(k-i+1,k-i+1);
    g = h*g;

w = ww(g,i);

h = u-2*w*(w');

y = hhh(y,h,i);

    
    q = y*q;
end
   r = q*a;
   q = inv(q);
   
end
