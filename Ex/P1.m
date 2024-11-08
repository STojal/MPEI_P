N=1e4; 
diferentes=zeros(1,N);
colisao =zeros(1,60);
for n=1:1:60
    M= randi(365, n, N); % inteiros de 1 a 365
    for i=1:1:N
        diferentes(i) = length(unique(M(:,i)))~=n;
    end
    colisao(n) = sum(diferentes)/N;
    
end
plot(1:1:60,colisao ,'.')