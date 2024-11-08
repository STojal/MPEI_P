
matrizXY = [0.3,0.2,0;0.1,0.15,0.05;0,0.1,0.1]

Valores_De_Y=sum(matrizXY);
Valores_De_X=sum(matrizXY,2);

Sx=0:2;
stem(Sx,Valores_De_Y);
axis([-1 3  -0.1 0.6])
hold on
xlabel="Valores";
ylabel="Varias aleatoiras";

stem(Sx,Valores_De_X);
legend("Valores X","Valores Y")
hold on

Ey=sum(Sx.*Valores_De_Y)
Ex=Sx*Valores_De_X

%Ex= 0*Valores_De_X(2)+1*Valores_De_X(2)+2*Valores_De_X(3)
%Ey=0*Valores_De_Y(2)+1*Valores_De_Y(2)+2*Valores_De_Y(3)

varX = Sx.^2*Valores_De_X-(Sx*Valores_De_X)^2
varY = sum(Sx.^2.*Valores_De_Y)-sum(Sx.*Valores_De_Y)^2
%correlação
Exy= sum(sum(Sx'*Sx.*matrizXY))
%covariancia
Covariancia = Exy-Ex*Ey
