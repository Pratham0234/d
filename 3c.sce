x1=[1,1;1,1];
x2=x1(:,$:-1:1);
x2=x2($:-1:1,:);
x=conv2(x1,x2);
disp("Linear auto Correlation Result x=",x);
