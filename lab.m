 A=importdata('lab.txt');
 x=A.data(:,1);
 y=A.data(:,2);
 Y=y*(10)^(-3);
 X=log(x);
 plot(X,Y);
 grid on;
 axis('square');
 hold on;
 
 x1=linspace(-4.213,0.5,1000);
 y1=-1.492;
 plot(x1,y1,'k');
 
 
