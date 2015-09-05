M=csvread('dia1.txt');
R_S=M(:,1);
Int=M(:,2);

if Int % 2==0
    Int(length(Int)+1)=0;
end
i=3;
j=15;
y=sgolayfilt(Int,i,j);
area=trapz(R_S,y);
y1=y/area;
i=1;
y2=zeros(length(y),1);
while(i<length(y)+1)
    y2(i)=(y(i)-min(y))/(max(y)-min(y))*100;
    i=i+1;
end
[pks,locs]=findpeaks(y2);
tempy=pks;
tempx=locs;
i=1;
h1=zeros(length(pks),1);
while i<(length(tempy)) 
   if(tempx(i+1)<tempx(i)+5) 
    if (tempy(i+1)<(tempy(i)+0.05*tempy(i)) && tempy(i+1)>(tempy(i)-0.05*tempy(i)))
        h1(i)=i;
        h1(i+1)=i+1;
    end
    end
    i=i+1;
end

i=1;
k1 =length(tempx);    
while(i<k1+1)
    j=1;
    df=zeros(7,1);
    while(j<4)
       df(4)=locs(i);
        df(4+j)=locs(i)+j;
        df(4-j)=locs(i)-j;
        j=j+1;
    end
    k=1;
    while(k<3)
     sum=0;   
    if(y2(df(4-k))>y2(df(4-k-1)))
        sum=sum+1;
    end
   disp(sum)
    k=k+1;
    end
     k=1;
    while(k<3)
     sum1=0;   
    if(y2(df(4+k))<y2(df(4+k-1)))
        sum1=sum1+1;
    end
    disp(sum1)
    k=k+1;
    end
    if(sum1==2&&sum==2)
        tempx(i)=0;
    end
    i=i+1;
end
disp(tempx)
