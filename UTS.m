 A=importdata('alum.txt');
 X=A.data(:,1);
 y=A.data(:,2);
 i=10;
 
 UTS1=max(y);
 display(UTS1)
 Ductility=area(Plastic_strain,Stress);
 display(Ductility)
 Stress=@(Plastic_strain)K*((Plastic_strain).^(t(1)));
g=x(m-1);h=x(k);
 Q=integral(Stress,g,h);
  display(Q)