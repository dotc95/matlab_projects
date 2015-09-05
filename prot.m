M=importdata('diam1.txt');
R_S=M(:,1);
Int=M(:,2);

if Int % 2==0
    Int(length(Int)+1)=0;
end
i=3;
j=15;
y=sgolayfilt(Int,i,j);
area=trapz(R_S,y);
i=1;
y2=zeros(length(y),1);
while(i<length(y)+1)
    y2(i)=(y(i)-min(y))/(max(y)-min(y));
    i=i+1;
end
    
y1=y/area;
[pks,locs]=findpeaks(y1);
h1=zeros(length(pks),1);
tempy=pks;
tempx=locs;
i=1;
while i<(length(tempy)) 
   if(tempx(i+1)<tempx(i)+5) 
    if (tempy(i+1)<(tempy(i)+0.05*tempy(i)) && tempy(i+1)>(tempy(i)-0.05*tempy(i)))
        h1(i)=i;
        h1(i+1)=i+1;
    end
    end
    i=i+1;
end
slope1=zeros(length(tempx),1);
slope2=zeros(length(tempx),1);
i=1;
while i<(length(tempx)) 
    k=locs(i);
    slope1(k)=(y2(k)-y2(k-1))/(R_S(k)-R_S(k-1));
    slope2(k)=(y2(k)-y2(k+1))/(R_S(k)-R_S(k+1));
    i=i+1;
end
d1=R_S(107:111,:);
d2=y2(107:111,:);

axis square
plot(d1,d2,'r');
hold on;

axis square




