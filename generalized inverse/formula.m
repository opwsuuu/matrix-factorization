function [a]=formula(b,c,d)

[m,n]=size(b);
l=n;
switch d
    case 1
        if rank(b)==rank([b,c])
            
            syms z;
           
           
           
           z=cell(l,1);
             for o=1:l
               z{o,1}=['z',num2str(o)];
             end
           
             t=sym(z);
               
          
            
            [p,q]=size(Arjian(b));
            a= Arjian(b)*c+(eye(p,n)-Arjian(b)*b)*t;
        else
          syms z;
           
           
           
           z=cell(l,1);
             for o=1:l
               z{o,1}=['z',num2str(o)];
             end
           
             t=sym(z);   
             [p,q]=size(Aljian(b,1));
            a= Aljian(b,1)*c+(eye(p,n)-Aljian(b,1)*b)*t;
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
