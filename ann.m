 A=importdata('altita.txt');
 x=A.data(:,1);
 y=A.data(:,3);
grid on;
hold on;
axis('square');
     grid on;
     j=length(x);
     
     m=2;
     q=zeros(j,1);
     while(m<j+1)
       r=zeros(j,1);
       s=zeros(j,1);
     h=1;
         while(h<m+1)
             r(h)=x(h);
             s(h)=y(h);
             h=h+1;
             
         end
         q(m)=trapz(r,s);
         m=m+1;
     end
     

         plot(x,q,'b')
         