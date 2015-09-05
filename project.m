M=importdata('diamon.txt');
knx=M(:,1);
kny=M(:,2);
if (length(kny))% 2==0
    kny(length(kny)+1)=0;
end
i=3;j=15;
y=sgolayfilt(kny,i,j);
q=1;
while(q<length(knx)-10)
x=zeros(10,1);
y=zeros(10,1);
q1=1;
while q1<11
    x(q1)=knx(q+q1);
    y(q1)=knx(q+q1);
    q1=q1+1;
end
p1=polyfit(x,y,1);
p2=polyfit(x,y,2);

check1=zeros(10,1);
error1=zeros(10,1);
q1=1;
while q1<11
    check1(q1)=p1(1)*x(q1)+p1(2);
    error1(q1)=abs(check1(q1)-y(q1));
    q1=q1+1;
end
check2=zeros(10,1);
error2=zeros(10,1);
q1=1;
while q1<11
    check2(q1)=p2(1)*(x(q1))^2+p2(2)*(x(q1))+p2(3);
    error2(q1)=abs(check2(q1)-y(q1));
    q1=q1+1;
end  


 
e1=sum(error1);
e2=sum(error2);

e=[e1,e2];
kb=floor(knx(q));
ke=ceil(knx(q+10));
if(min(e)==e1)
q2=1;
yf1=[];
while(kb+q2<ke+1)
    yf1(kb+q2)=p1(1)*(kb+q2)+p1(2);
    q2=q2+1;
end
end
if(min(e)==e2)
q2=1;
yf2=[];
while(kb+q2<ke+1)
    yf2(kb+q2)=p2(1)*(kb+q2)^2+p2(2)*(kb+q2)+p2(3);
    q2=q2+1;
end
end

q=q+10;
end

display(yf1)
display(yf2)
    

