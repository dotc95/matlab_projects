A=importdata('labnano.txt');
 x=A.data(:,1);
 y=A.data(:,2);
 plot(x,y,'r')
 hold on;
 k=length(y);
 i=1;
 while(i<k)
     if(y(i)==7994.359669)
         break;
     end
 i=i+1;    
 end
 
 y1=y(i:i+800);
 x1=x(i:i+800);
 plot(x1,y1,'y*')
 a=polyfit(x1,y1,1)
 
 