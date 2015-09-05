A1=input('enter the molecular weight of 1');
A2=input('enter the molecular weight of 2');
A3=input('enter the molecular weight of 3');
A4=input('enter the molecular weight of 4');
A5=input('enter the molecular weight of 5');
a1=input('enter the stoichometric coefficient of 1');
a2=input('enter the stoichometric coefficient of 2');
a3=input('enter the stoichometric coefficient of 3');
a4=input('enter the stoichometric coefficient of 4');
a5=input('enter the stoichometric coefficient of 5');
a=[a1,a2,a3,a4,a5];
A=[A1,A2,A3,A4,A5];

totalweight=input('enter total weight of the sample');
y=[0,0,0,0,0];
sum=[0,0,0,0,0,0]; i=1; j=1;
while(j<6)
while(i<6)
    y(i)=(A(i)/A(1))*(a(i)/a(1));
    sum(j)=sum(j)+y(i);
    i=i+1;
end
j=j+1;
end
W=[0,0,0,0,0];
k=1;
while(k<6)
W(k)=totalweight/(sum(k));
end
k=k+1;
l=1;
while(l<6)
disp('weight of A(l) to be used ')
disp(W(l))
l=l+1;
end