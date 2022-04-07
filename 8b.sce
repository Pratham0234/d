clc;
clear;
close;
in=input('Enter squares matrix::::');
[m,n]=size(in);
y=0;
tx(1)=0;
o=1
for j=1:m


02

for k=1:n
x=in(j,k);
if x==y
tx(o)=tx(o)+1;
else
o=o+1;
tx(o)=1;
end
y=x;
end
end
disp('code sucsess');
disp(tx);
