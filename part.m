r=[0,0.019,0.252,0.790,2.410,6.460,7.13,2.660,0.200,0.02,0.016];

l=20;
i=1;
k=zeros(11,1);
while(i<12)
    k(i)=(r(i)/20)*100;
    i=i+1;
end
disp(k)
i=1;
q=zeros(11,1);
while(i<12)
    j=1;
    sum=0;
    while(j<i+1)
        sum=sum+r(j);
        j=j+1;
    end
       q(i)=sum;
       i=i+1;
end
disp(q);
i=1;
k1=zeros(11,1);
while(i<12)
    k1(i)=(q(i)/20)*100;
    i=i+1;
end
disp(k1)
v=[1.4,1,0.71,0.5,0.355,0.25,0.18,0.125,0.09,0.063,0.02];
xmarkers=v;
ymarkers=q;
plot(v,q,'r',xmarkers,ymarkers,'b*');

axis('square');


