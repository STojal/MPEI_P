clc, clearvars,close all
N=1e6;

n=6;
Sx =-2:9;
px=[0 0 0 ones(1,6)/6 0 0 0];

subplot(1,2,1)

stem(Sx,px)
%funcao massa de probabilidade
subplot(1,2,2)

psumx= cumsum(px);

stairs(Sx,psumx)
axis([ -2.5 , 9.5 ,0.005 , 1.1]);


title("fmp_x")
xlabel("Valor dos lados")
ylabel("PX(x_i")