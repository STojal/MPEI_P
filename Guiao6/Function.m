function [Keys] = Function(N,imax,imin,arrayChar,parrayChar)
%FUNCTION Summary of this function goes here
%   Detailed explanation goes here
%%assert(length(arrayChar) == length(parrayChar));

Keys = cell(1,N);
for k=1:N
    keyLength= randi([imin imax]);
    randonIndex=randi(length(arrayChar),1,keyLength);
    Keys{k}=arrayChar(randonIndex);
end


end

