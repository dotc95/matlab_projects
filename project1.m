M=importdata('diamon.txt');
knx=M(:,1);
kny=M(:,2);
if (length(kny))% 2==0
    kny(length(kny)+1)=0;
end
i=3;j=15;
y=sgolayfilt(kny,i,j);
a=1;
k1=ceil(knx(1));
sum=0;
while(knx(a)<ceil(knx(1)))
    sum=sum+1;
    a=a+1;
end
kinx=a+1;
i=1;
while(a<length(knx))
    b=0;
    while(b)
        if(ceil(knx(a+b))==floor(knx(a+b)))
            k=ceil(knx(a+b));
            b=b+1;
        end
       sum=0;
       if(knx(b)<k+1)
           sum=sum+1;
       end
       