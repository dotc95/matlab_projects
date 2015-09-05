M=importdata('diam1.txt');
R_S=M(:,1);
Int=M(:,2);

if Int % 2==0
    Int(length(Int)+1)=0;
end
i=3;
j=15;
y=sgolayfilt(Int,i,j);
area=trapz(R_S,y);
y1=y/area;
[pks,locs]=findpeaks(y1);
plot(R_S(100:115,:), y1(100:115,:))

length(pks)
length(locs)
pks