function [a]=formula(b,c,d)

[m,n]=size(b);
l=max(m,n);
switch d
    case 1
        if rank(b)==rank([b,c])
            syms z1 z2 z3;
            z=[z1;z2;z3];
            [p,q]=size(Arjian(b));
            a= Arjian(b)*c+(eye(p,n)-Arjian(b)*b)*z;
        else
          syms z1 z2 z3;
            z=[z1;z2];    
             [p,q]=size(Aljian(b,1));
            a= Aljian(b,1)*c+(eye(p,n)-Aljian(b,1)*b)*z;
        end
        
    case 2
         if rank(b)==rank([b,c])
            syms z g;
            a= Amjian(b,1)*c;
        else
            
            a= Aplus(b)*c;
        end
        
        
        
end

end
