clear all;
X1=linspace(-20,2,10000);

A=-85350;
B=42.05;
Delta_G=A+B*(298.15);
m=-2;
n=-1;
T=1600;
k=exp((Delta_G)/((-1)*(8.314)*(T)));
P_CO2=exp((m/n)*X1-(1/n)*log(k));
Y1=log(P_CO2);
plot(X1,Y1,'r');
hold on ;
xlabel('log(P CO)');
ylabel('log(P CO2)');
X2=linspace(-20,2,50);

A_2=-126700;
B_2=3.82;
Delta_G1=A+B*(298.15);
m_1=2;
n_1=2;
T=1600;
k_2=exp((Delta_G1)/((-1)*(8.314)*(T)));
P_CO2_2=exp((m_1/n_1)*X2-(1/n_1)*log(k_2));
Y2=log(P_CO2_2);
plot(X2,Y2,'b');
hold on;

X7=linspace(-20,2,50);
A_3=-78900;
B_3=0.94;
Delta_G2=A+B*(298.15);
m_2=2;
n_2=2;
T=1600;
k_3=exp((Delta_G2)/((-1)*(8.314)*(T)));
P_CO2_3=exp((m_2/n_2)*X2-(1/n_2)*log(k_3));
Y7=log(P_CO2_3);
plot(X7,Y7,'y');

X12=linspace(-20,2,10000);
P_CO2_23=exp((m_1/n_1)*X12-(1/n_1)*log(k_2));
Y28=log(P_CO2_23);

P_CO2_22=exp((m/n)*X12-(1/n)*log(k));
Y17=log(P_CO2_22);

p=1;
while(Y17(p)>Y28(p))
    p=p+1;
end
l=1;
while(Y28(l)>Y17(l))
    l=l+1;
end
disp(p)
disp(l)
disp(Y1(5360))
