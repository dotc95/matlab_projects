n=input('enter the number of elements in the alloy');
i=1;
A=[0,0,0,0,0,0,0,0,0,0];
while(i<n)
    A(i)=fscanf('enter the molecular weight of element %d =', i);
    i=i+1;
end
a=[0,0,0,0,0,0,0,0,0];
i=1;
    while(i<n)
    a(i)=fscanf('enter the stoichiometry ratio of element %d =', i);
    i=i+1;
    end  
a=[a1,a2,a3,a4,a5,a6,a7,a8];
A=[A1,A2,A3,A4,A5,A7,A8];

totalweight=input('enter total weight of the sample');
sum=[0,0,0,0,0];  j=1;
while(j<n)
    i=1;
while(i<n)
    y=(A(i)/A(j))*(a(i)/a(j));
    sum(j)=sum(j)+y;
    i=i+1;
end
disp(sum(j))
j=j+1;
end
W=[0,0,0,0,0];
k=1;
while(k<n)
W(k)=totalweight/(sum(k));
disp('weight of W(k) element')
disp(W(k))
k=k+1;
end
h=1;summ=0;
disp()
while(h<n)
summ=summ+W(h);
h=h+1;
end
disp(summ)

