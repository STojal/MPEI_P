clc,clearvars
[Set,Nu,users] = ConjuntosData("u.data");
J=DistanciaJacard(Nu,Set);
%%
threshold=0.2;
[SimiliarUses] = ParesSimilares(J,users,threshold);