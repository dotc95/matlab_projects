V=input('Enter the Velocity of the fluid');
R=input('Enter the radius of the sphere');
x=linspace(-20,20,10000);
y=linspace(-20,20,10000);

t=linspace(0,1000,2*pi);
x1=R*cos(t);
y1=R*sin(t);
fill(x1,y1,'r');
i=1;
while(i<10000)
    if(x(i)<R*cos(t))
        x(i)=0;
    end
    if(y(i)<R*sin(t))
        y(i)=0;
    end
    i=i+1;
end
i=1;
r=sqrt(((x.^2)+(y.^2)));
while(i<1000)
    if(r(i)==0)
        r(i)=R;
    end
    i=i+1;
end    
        


c=x./r;
s=y./r;
V1=V*c.*(1-(1.5*(R./r))+0.5*((R./r).^3));
V2=(-1)*V*s.*(1-(0.75*(R./r))-0.25*((R./r).^3));
Vx=((V1.*c)-(V2.*s));
Vy=((V1.*s)+(V2.*c));
plot(V1,V2);
Vt=sqrt((V1.^2)+(V2.^2));
