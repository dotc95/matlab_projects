j=0;
while(j<length(y2)-8)
win=zeros(9,1);
i=1;
while i<10 
win(i+j)=y2(i+j);
i=i+1;
end
tempx=max(win);
tempn=min(win);
k=1;
while k<10
    if win(k)==tempx
        k_max=k;
    end
    if win(k)==tempn
        k_min=k;
    end
    k=k+1;
end
if(k_max==5)
    k=1;
    fw=1;
   while(k<k_max)
       if(win(k+1)>win(k))
          fw=fw+1;
       end
       k=k+1;
   end
   fv=0;
   k=k_max;
   while(k<length(win))
       if(win(k+1)<win(k))
           fv=fv+1;
       end
       k=k+1;
   end
   peks=zeros(length(y2),1);
   if(fv==fv1)
   peks(j+k_max)=j+k_max;
   end
end
j=j+1;
end
   l=1;
   while(l<length(peks)+1)
       if peks(l)==0
           peks(i)=[];
       end
       l=l+1;
   end
   length(peks)
   
       