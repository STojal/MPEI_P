function [hc] = Has_Function(elem,hf,R)
%HAS_FUNCTION Summary of this function goes here
%   Detailed explanation goes here

a =R.a(hf)
b =R.b(hf)

hc = mod(a*elem +b,R.p)
end

