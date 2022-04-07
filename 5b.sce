clc ;
close ;
a =imread("C:\Users\prath\Desktop");
a = rgb2gray (a);
b = double (a) *0.5;
b = uint8 (b);
c = double (b) *2.5;
c = uint8 (c);
figure (1)
imshow(uint8(a));
title ( 'Original Image' );
figure (2)
imshow(b);
title ( 'Decrease in Contrast' );
figure (3)
imshow(c);
title ( 'Increase in Contrast' );
