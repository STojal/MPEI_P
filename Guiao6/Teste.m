clc,clearvars,close all
n=8e5
bf=CriarBlomFilter(n);
k=5;



imin=6;
imax=20;
alphabet = ['a':'z' 'A':'Z'];
N=7e4;    
parrayChar=0;

Keys=Function(N,imax,imin,alphabet,parrayChar);



for i=0:1e3
    
    
end
elemento='Aveiro';
BF = adcionarBloom(elemento,bf,k);
r=0
x='Aveiro'
r=r+pertenceBloom(x,BF,k)

for p=1:1000
    
    BF = adcionarBloom(Keys{p},BF,k);

end


for i=1001:length(Keys)
    
    r= r+pertenceBloom(Keys{i},BF,k);

end

