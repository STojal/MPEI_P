clc , clearvars

A =[2,3,4,5]
B =[2,3,6]
C =[1,2]
D = [2,5]
E =[1,2]
F =[1,2,3,4,5]
N=10000000
t=randi(6);
numerosChosen=zeros(1,  N);
for l=1:1:N;
    switch t
        case 1
            number = randi(length(A));
            numerosChosen(l)=A(number);
            t=number;
        case 2
            number = randi(length(B));
            numerosChosen(l)=B(number);
            t=number;
        case 3
            number = randi(length(C));
            numerosChosen(l)=C(number);
            t=number;
        case 4
            number = randi(length(D));
            numerosChosen(l)=D(number);
            t=number;
       case 5
            number = randi(length(E));
            numerosChosen(l)=E(number);
            t=number;
        case 6
            number = randi(length(F));
            numerosChosen(l)=F(number);
            t=number;
    end
end

ProbA=sum(numerosChosen==1)/N

ProbB=sum(numerosChosen==2)/N
ProbC=sum(numerosChosen==3)/N
ProbD=sum(numerosChosen==4)/N
ProbE=sum(numerosChosen==5)/N

ProbF=sum(numerosChosen==6)/N



