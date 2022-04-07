clc;
a=imread("C:\Users\prath\Desktop");
b=double(a)+50;
b=unit8(b);
figure(1)
imshow(unit8(a));
title('Orignal Image')
figure(2)
imshow(unit8(b));
title('Enhanced Image')
