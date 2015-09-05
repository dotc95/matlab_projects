 A=importdata('altita.txt');
 x=A.data(:,1);
 y=A.data(:,3);
  j=length(x);
  plot(x,y,'b*');
  hold on;
  grid on;
  plot(x,y,'b');