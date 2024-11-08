clc ,clearvars,close all
media=14;
dp=2;
N=1e6;
x = randn(N,1)*dp+media;
mean(x)
var(x)
hist(x,100)
res = sum( x>=12 & x<=16 )/N
%%
res = sum( x>=10 & x<=18 )/N
%%
res = sum( x>=10 )/N
%%
clc,clearvars
mu = 14;
sigma = 2;
pt = normcdf(16, mu, sigma) - normcdf(12, mu, sigma);