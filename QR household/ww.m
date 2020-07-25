function [s] = ww(b,i)
x = length(b(1,:))-i+1;
f = zeros(x,1);
e = eye(x,1);
f = zeros(x,1);

for q=1:x
    f(q) = b(q+i-1,i);  
end

s = (f-norm(f,2)*e);

s = s/norm(s,2);




end
