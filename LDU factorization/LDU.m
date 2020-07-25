function [la,d,u] = LDU(a)
u = a;
k = length(a);
l = eye(k,k);
d = zeros(k,k);
la = eye(k,k);









for n=1:k-1
    f = zeros(n,n);
    for q = 1:n
        for r = 1:n
            
          f(q,r) = a(q,r);
        end
    end
      if det(f) == 0          
           disp(['cannot do this, det = 0']);
         return
      end
end

for n=1:k
    for g=n:k-1      
            if u(g+1,n) ~= 0
             l(g+1,n)= u(g+1,n)./ u(n,n); 
             u(g+1,:)= u(g+1,:)-l(g+1,n).*u(n,:); 
            end
        
    end
    la = la*l;
     l = eye(k,k);
     
     
end

    for i=1:k
        if u(i,i)~=0
            d(i,i) = u(i,i);
            u(i,:) = u(i,:)./u(i,i);
        else 
            u(i,i) = 1;
        end
    end
    
          
     
end


    


