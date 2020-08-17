function [a]=Aplus(b)
[m,n]=size(b);
if isdiag(b)==1    
    
    a=zeros(m,n);
    for o=1:min(m,n)
        switch b(o,o)
            case 0
               
            otherwise
        a(o,o)=1/b(o,o);
        end
    end
    
end

switch rank(b)
    case min(m,n)
        if m==n
        a=inv(b);
        elseif m<n
            a=b'/(b*b');
        else
            a=(b'*b)\b';
            
        end
    otherwise
        [c,d]=zhi(b);
        c=(c'*c)\c';
        d=d'/(d*d');
        a=d*c;
        
end








end
