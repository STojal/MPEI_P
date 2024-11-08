
%a éxperiencia retirar a nota

n=100;
Sx =0:1:n;

px = ones(1,n+1)/n

stem(Sx,px)
axis([0,100,-0.005,0.2])

title("fmp_x")
xlabel("Px")
ylabel("PX(x_i")
%%
%Alinea B 
N=100;
Sx = [5,50,100]
Px = [90,9,1]/N
subplot(1,2,1)

stem(Sx,Px)
axis([0,102,-0.005,1])
subplot(1,2,2)

psumx= cumsum(Px);

stairs(Sx,psumx)
axis([0,110,-0.005,1])


title("fmp_x")
xlabel("Px")
ylabel("PX(x_i")

