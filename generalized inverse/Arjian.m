function [a]=Arjian(b)

[m,n]=size(b);
switch rank(b)
    case min(m,n)
        if m<n
        a=b'/(b*b');
        elseif m>n 
        a=(b'*b)\b';
        else
            a=inv(b);
        end
    otherwise
        [c,d]=zhi(b);
        c=(c'*c)\c';
        d=d'/(d*d');
        a=d*c;
end












end
