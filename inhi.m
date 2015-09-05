v=[0,5,10,15];
c=v/200;
x=c;
r=[0.45,0.0332,0.027,0.011];
i=1;
y=[0,0,0,0];
while(i<5)
    y(i)=(1-(r(i)/r(1)));
    i=i+1;
end
xmarkers=x;
ymarkers=y;
plot(x,y,'r',xmarkers,ymarkers,'b*');

axis('square');
