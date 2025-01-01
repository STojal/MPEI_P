MatrizTransicao = [0.7,0.2,0.1;0.2,0.3,0.5;0.3,0.3,0.4]';

V0=[1,0,0]';
%V2=T*T*V0
V2=MatrizTransicao*MatrizTransicao*V0;
ValorDesejado=V2(3);
% 0.21
%%
matriz=MatrizTransicao;
matrizToplot=zeros(3,20);
for i=1:20
    matriz=matriz*MatrizTransicao;
    matrizToplot(:,i)=matriz*V0;
end
V20=matriz*V0;

plot(matrizToplot')
legend("Sol","Nuvens","Chuva")
xlabel="Numero de N"
ylabel="probabilidade"
grid on
%%
MatrizTransicao = [0.7,0.2,0.1;0.2,0.3,0.5;0.3,0.3,0.4]';
V0=[1,0,0]';

matriz=MatrizTransicao;
i=1;
previus=MatrizTransicao;
while 1
    
    matriz=matriz*MatrizTransicao;
    matrizToplot(:,i)=matriz*V0;
    if max(max(abs(previus-matriz)))<1e-16
        break
    end
    i=i+1;
    previus=matriz;

end
V20=matriz*V0;

plot(matrizToplot')
legend("Sol","Nuvens","Chuva")
xlabel="Numero de N"
ylabel="probabilidade"
grid on
%% Valor teorico
clc,clearvars
MatrizTransicao = [0.7,0.2,0.1;0.2,0.3,0.5;0.3,0.3,0.4]';
V0=[1,0,0]';
M=[MatrizTransicao*eye(length(MatrizTransicao)) ;ones(1,length(MatrizTransicao))];
b=[zeros(1,length(MatrizTransicao)),1];
U=M\b
%% Ex2
MatrizTransicao=[0.8,0.2,0,0;0,0.9,0.1,0;0.3,0.2,0.4,0.1;0,0,0,1]'

V0=[1,0,0,0]';

matriz=MatrizTransicao;
matrizToplot=zeros(4,length(MatrizTransicao));
for i=1:1000
    matriz=matriz*MatrizTransicao;
    matrizToplot(:,i)=matriz*V0;
end
V1000=matriz*V0;
V1000(3)
plot(matrizToplot')
legend("1","2","3","4");
xlabel="Numero de N";
ylabel="probabilidade";
grid on
%% c
T2=MatrizTransicao^2;
T10=MatrizTransicao^10;
T100=MatrizTransicao^100;
%% d
MatrizTransicao=[0.8,0.2,0,0;0,0.9,0.1,0;0.3,0.2,0.4,0.1;0,0,0,1]'
numEstadosNaoAbsorventes=3
Q=MatrizTransicao(1:numEstadosNaoAbsorventes,1:numEstadosNaoAbsorventes)
matriz=Q;
V0=[1,0,0]';

i=1;
previus=Q;
while 1
    
    matriz=matriz*Q;
    matrizToplot(:,i)=matriz*V0;
    if max(max(abs(previus-matriz)))<1e-16
        break
    end
    i=i+1;
    previus=matriz;

end
V20=matriz*V0;

%% 
% colunas numero de vezes ue se passam em cada linha começando numa coluna 
F=inv(eye(numEstadosNaoAbsorventes)-Q)

% a soma dos valores das colunas da-nos uantas paginas são necessarias em
% media para chegar o estado absorvente saindo de uma coluna não absorvente

sum(F)
%% 3
%                A  B  C D E  f
MatrizTransicao=[0,1,0,0,0,0; %A
                 0, 0,1/2,0,1/2,0; %B
                 0,0,0,1,0,0; %C
                 0,0,1,0,0,0; %d
                 1/3,1/3,0,0,0,1/3;  %E     
                   0,0,0,0,0,0]' %F


t10=MatrizTransicao^10
%%
A=1;
B=2;
C=3;
D=4;
E=5;
F=6;
H=zeros(6);

H(B,A)=1;
H(E,B)=1;
H(C,B)=1;
H(D,C)=1;
H(C,D)=1;
H(B,E)=1;
H(A,E)=1;
H(F,E)=1;

isSaida=sum(H);
H=H./isSaida;
H(isnan(H))=0;
pr=ones(6)/6
pr=H^10*pr

