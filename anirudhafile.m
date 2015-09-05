A=importdata('file.txt');
ELEMENT=A.data(:,1);
MWT=A.data(:,2);
Q=input('enter the number of elements in the array');
i=1;
E(10)=zeros;
while(i<=Q)
    E(i)=input('enter the elements chemical formula');
end
for(i=1:1:10)
    q=E(i);h=0;
    for(j=1:1:last(ELEMENT))
    if(ELEMENT(j)==q)
    else
       
        h=h+1;
    end
    end
    
