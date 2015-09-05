V=input('Enter the Velocity of the fluid');
R=input('Enter the radius of the sphere');
x=linspace(-10,10,1000000);
y=linspace(-10,10,1000000);

t=linspace(0,2*pi,1000);
x1=R*cos(t);
y1=R*sin(t);
fill(x1,y1,'r*');
hold on;
i=1;j=1;
while(i<1000000)
    if(sqrt(((x(i)^2)+(y(i)^2)))<R)
        x(i)=0;
        y(i)=0;
        j=j+1;
    end
    i=i+1;
end
disp(j)
i=1;
r=sqrt(((x.^2)+(y.^2)));
while(i<1000000)
    if(r(i)==0)
        r(i)=R;
    end
    i=i+1;
end          
c=x./r;
s=y./r;
V1=V.*(1-(1.5.*(R./r))+0.5.*((R./r).*(R./r).*(R./r)));
V2=(-1).*V.*s.*(1-(0.75.*(R./r))-0.25.*((R./r).*(R./r).*(R./r)));
Vt=sqrt((V1.^2)+(V2.^2));
Vx=((V1.*c)-(V2.*s));
Vy=((V1.*s)+(V2.*c));
plot(x,V1);

plot(x,V2,'r');
plot(x,Vt,'y');


axis('square');