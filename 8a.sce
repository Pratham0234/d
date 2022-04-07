clc;
clear all;
n=input("Enter the no. of symbols : ");
for i = 1:n
printf("\nEnter the probability(<=1) of symbol %d: ",i);
p(i)=input("");
end
printf("\nThe cdf of symbol 1: %.3f ",p(1));
c(1)=p(1);
for i = 2:n
c(i)=p(i)+c(i-1);
printf("\nThe cdf of symbol %d: ",i);
printf("%.3f",c(i));
end
s=input("Enter the no. of symbols in sequence");/
printf("Enter the sequence ");
for j = 1:s
b(j)=input("");
end
if b(1) == 1 then
l(1)=0;
u(1)=c(b(1));


02

else
l(1)=c(b(1)-1);
u(1)=c(b(1));
end
for k = 2:s
if b(k) == 1 then
l(k)=l(k-1);
u(k)=l(k-1)+((u(k-1)-l(k-1))*c(b(k)));
else
l(k)=l(k-1)+((u(k-1)-l(k-1))*c(b(k)-1));
u(k)=l(k-1)+((u(k-1)-l(k-1))*c(b(k)));
end
end
tag=(l(s)+u(s))/2;
printf("The tag of the sequence is= %.10f",tag);
