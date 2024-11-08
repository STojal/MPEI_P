clc,clearvars,close all
N=120
MediaN1=14;
MediaN2=14*1.2;
VarN1=MediaN1*1/4
VarN2=MediaN2*1/4

PN1 = round(randn(N,1)*sqrt(VarN1)+MediaN1);
PN2 = round(randn(N,1)*sqrt(VarN2)+MediaN2);

figure(1)

subplot(2,2,1)
hist(PN1,20)

subplot(2,2,2)
hist(PN2,20)

S_N1= min(PN1):max(PN1)
S_N2= min(PN2):max(PN2)
P = zeros(length(S_N1),length(S_N2))
for n1=1:length(S_N1)
    for n2=1:length(S_N2)
        casosfav = sum(S_N1(n1)==PN1 &S_N2(n2)==PN2);
        P(n1,n2)= casosfav/N;
    end
end


[X,Y] = meshgrid(S_N1,S_N2);
subplot(2,2,3)

stem3(X,Y,P')
