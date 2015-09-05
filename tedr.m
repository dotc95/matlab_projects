V=input('Enter the Velocity of the fluid');
R=input('Enter the radius of the sphere');
q=10000;
x=linspace(-100,100,q);
q1=10000;
t=linspace(0,2*pi,q1);
q2=10000;
r=linspace(R,10*R,q);
x1=R*cos(t);
y1=R*sin(t);

hold on;

V1=V.*cos(t).*(1-(1.5.*(R./r))+0.5.*((R./r).*(R./r).*(R./r)));
V2=(-1).*V.*sin(t).*(1-(0.75.*(R./r))-0.25.*((R./r).*(R./r).*(R./r)));
Vt=sqrt((V1.^2)+(V2.^2));
S=@(r,t)sqrt((V1.^2)+(V2.^2));
ezplot(S);


axis('square');