k=10;
R.a = randi(1234567,1,k)
R.b = randi(1234567,1,k)
R.p = randi(1234567,1,k)

elem =123
for hf=1:10
    Has_Function(elem,hf,R)
end