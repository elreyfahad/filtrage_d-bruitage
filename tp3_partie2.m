function tp3_partie2 (im)

   X1=imread(im);
   [ m n p]=size(X1);
   X2=imnoise(X1,'gaussian',0,0.01);
   X3=imnoise(X1,'salt & pepper', 0.05);
   
   
   h = fspecial('average',[3 3]); % Filtre moyenneur de taille 3 x 3
   
   Y2 = imfilter(X2, h, 'replicate');
   
   % X : image normalisée (valeurs entre 0 et 1)
   Y3= medfilt2(X3, [3 3]) ; % Filtrage médian de taille 3 x 3

   
   figure
   subplot(1,3,1),imshow(X1),title('X1');
   subplot(1,3,2),imshow(X3),title('X3');
   subplot(1,3,3),imshow(Y3),title('Y3');
   
   [peaksnr2, snr2] = psnr (Y2, X1);
   [peaksnr3, snr3] = psnr (Y3, X1);
   
   fprintf ( 'La valeur du pic-SNR 2 est de %f' , peaksnr2);
   fprintf ( '\n La valeur du pic-SNR 3 est de %f\n' , peaksnr3);
   

end