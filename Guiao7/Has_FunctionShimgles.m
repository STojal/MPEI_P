function [hc] = Has_FunctionShimgles(shimgle,hf,R,p)
%HAS_FUNCTIONSHIMGLES Summary of this function goes here
%   Detailed explanation goes here
r=R(hf,:);
codigos_Asci =double(shimgle);
hc = mod(codigos_Asci*r',p);
end

