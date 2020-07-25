function [y] = hhh(y,h,i)

k = length(y);
y = eye(k,k);
for a=k:-1:i
    for b=k:-1:i
        y(b,a) = h(b-i+1,a-i+1);
    end
end



end
