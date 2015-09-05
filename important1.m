p3=polyfit(x,y,3);






check3=zeros(10,1);
error3=zeros(10,1);
q1=1;
while q1<11
    check3(q1)=p3(1)*(x(q1))^3+p3(2)*(x(q1))^2+p3(3)*(x(q1))+p3(4);
    error3(q1)=abs(check3(q1)-y(q1));
    q1=q1+1;
end





if(min(e)==e3)
q2=1;
yf3=[];
while(kb+q2<ke+1)
    yf3(kb+q2)=p3(1)*(kb+q2)^3+p3(2)*(kb+q2)^2+p3(3)*(kb+q2)+p3(4);
    q2=q2+1;
end
end