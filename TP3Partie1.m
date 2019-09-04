function TP3Partie1()
X1 = imread('cam.png');
X2 = imnoise(X1,'gaussian',0.01);

figure;
title('image avec le bruit poivere et sel');
subplot(3,3,1);
h = fspecial('average', [3 3]);
Y2 = imfilter(X2, h, 'replicate');
imshow(Y2);
title('moyenner 3x3');

subplot(3,3,2);
h = fspecial('average', [5 5]);
Y2 = imfilter(X2, h, 'replicate');
imshow(Y2);
title('moyenner 5x5');

subplot(3,3,3);
h = fspecial('average', [7 7]);
Y2 = imfilter(X2, h, 'replicate');
imshow(Y2);
title('moyenner 37x7');
subplot(3,3,4);
h = fspecial('gaussian', [15 15], 2);
Y2 = imfilter(X2, h, 'replicate');
imshow(Y2);
title('gaussian 15x15 s=2');

subplot(3,3,5);
h = fspecial('gaussian', [15 15], 1.5);
Y2 = imfilter(X2, h, 'replicate');
imshow(Y2);
title('gaussian 15x15 s=1.5');

subplot(3,3,6);
h = fspecial('gaussian', [15 15], 0.5);
Y2 = imfilter(X2, h, 'replicate');
imshow(Y2);
title('gaussian 15x15 s=0.5');

subplot(3,3,7);
Y2 = medfilt2(X2, [3 3]);
imshow(Y2);
title('mediane 3x3');

subplot(3,3,8);
Y2 = medfilt2(X2, [5 5]);
imshow(Y2);
title('mediane 5x5');

subplot(3,3,9);
Y2 = medfilt2(X2, [7 7]);
imshow(Y2);
title('mediane 7x7');
end

