function [a]=Ajian(b)

[m,n]=size(b);

q=eye(n);

p=eye(m);

u=zeros(m+n,m+n);

for o=1:m
    for h=1:n
        u(o,h)=b(o,h);    
    end
end

for o=1:m
    for h=1:m
        u(o,h+n)=p(o,h);    
    end
end

for o=1:n
    for h=1:n
        u(o+m,h)=q(o,h);    
    end
end

bb=min([m n]);   %先判断主对角线是否为0


            
for o=1:bb  
     he=0;
                                         %开始消元，先↓消
    for h=o:n
        he=abs(u(o,h))+he;
    end    
    if he==0
        for t=o+1:m
               if u(t,o)==0
               else
                   u([o t],:)=u([t o],:);
                   u(o,:)=u(o,:)/u(o,o);
                   for v=o+1:m
                   u(v,:)=u(v,:)-u(v,o).*u(o,:);
                   end
                   break
               end
         end
    else
        if u(o,o)~=0
         u(o,:)=u(o,:)/u(o,o);
         for v=o+1:m
             u(v,:)=u(v,:)-u(v,o).*u(o,:);
         end
        else
            for t=o+1:n
               if u(o,t)==0
               else
                   u(:,[o t])=u(:,[t o]);
                   u(o,:)=u(o,:)/u(o,o);
                   for v=o+1:m
                   u(v,:)=u(v,:)-u(v,o).*u(o,:);
                   end
                   break
               end
            end
        end
       
    end
end
                    %开始对→方向消元
                    


for o=1:bb
   for h=o+1:n
   u(:,h)=u(:,h)-u(o,h).*u(:,o);
    
    
    
   end
end


for o=1:bb
    if u(o,o)==0
   for h=o+1:bb
       if u(h,h)~=0
            u(:,[h o])=u(:,[o h]);
            u([h o],:)=u([o h],:);
            break
       end
   end
    end
end

uu=u;

uu(:,1:n)=[];
uu(m+1:n+m,:)=[];
p=uu;
uu=u;

uu(1:m,:)=[];
uu(:,n+1:n+m)=[];
q=uu;
uu=u;
uu(m+1:n+m,:)=[];
uu(:,n+1:n+m)=[];
a=q*uu'*p;
end
