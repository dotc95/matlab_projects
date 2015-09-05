clear all;
X1=linspace(-20,2,50);

A=-85350;
B=42.05;
Delta_G=-313970;
m=-2;
n=-1;
T=input('enter the equilibrium temperature T');
k=exp((Delta_G)/((-1)*(8.314)*(T)));
P_CO2=exp((m/n)*X1-(1/n)*log(k));
Y1=log(P_CO2);
plot(X1,Y1,'r');
hold on ;
X2=linspace(-20,2,50);

A_2=-126700;
B_2=3.82;
Delta_G1=-528732;
m_1=2;
n_1=2;
T=input('enter the equilibrium temperature T');
k_2=exp((Delta_G1)/((-1)*(8.314)*(T)));
P_CO2_2=exp((m_1/n_1)*X2-(1/n_1)*log(k_2));
Y2=log(P_CO2_2);
plot(X2,Y2,'b');
hold on;

X7=linspace(-20,2,50);
A_3=-78900;
B_3=0.94;
Delta_G2=-334828;
m_2=4;
n_2=3;
T=input('enter the equilibrium temperature T');
k_3=exp((Delta_G2)/((-1)*(8.314)*(T)));
P_CO2_3=exp((m_2/n_2)*X2-(1/n_2)*log(k_3));
Y7=log(P_CO2_3);
plot(X7,Y7,'y');



