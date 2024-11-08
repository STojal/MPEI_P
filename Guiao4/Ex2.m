clc,clearvars
matrizXY = [1/8,1/8,1/24;1/8,1/4,1/8;1/24,1/8,1/24];
Valores_De_Y=sum(matrizXY)
Valores_De_X=sum(matrizXY,2)
Sx=[-1 0 1]
Sy=[-1 0 1]
ValoresLogicos = (Valores_De_X*Valores_De_Y == matrizXY)
sum(sum(ValoresLogicos))==numel(matrizXY);