V=input('Enter the Velocity of the fluid');
R=input('Enter the radius of the sphere');
t=linspace(0,2*pi,1000);
r=linspace(R,10*R,1000000);
x1=r.*cos(t);
y1=r.*sin(t);
c=x1./r;
s=y1./r;
V1=V.*(1-(1.5.*(R./r))+0.5.*((R./r).*(R./r).*(R./r)));
V2=(-1).*V.*s.*(1-(0.75.*(R./r))-0.25.*((R./r).*(R./r).*(R./r)));
Vt=sqrt((V1.^2)+(V2.^2));
Vx=((V1.*c)-(V2.*s));
Vy=((V1.*s)+(V2.*c));