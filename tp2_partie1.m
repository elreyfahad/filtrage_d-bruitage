function tp2_partie1(im)

   X1=imread(im);
   figure
   %subplot(1,3,1),imshow(X1),title('X1');
   
   X2=imnoise(X1,'gaussian',0,0.05);
   X3=imnoise(X1,'salt & pepper', 0.10);
   
   %subplot(1,3,2),imshow(X2),title('X2');
   %subplot(1,3,3),imshow(X3),title('X3');
   
   
   % x1, x2, x3 : trois signaux de taille N
   % Façon 1
  
   x1=X1(128,:);
   x2=X2(128,:);
   x3=X3(128,:);
   
   figure, plot(1:256 ,x1,'b')
   hold on
   plot(1:256, x2 ,'g')
   hold on
   plot(1:256, x3, 'r')
   % Façon 2
   %figure, plot(1:256 ,x1 ,1:256 ,x2 ,1:256 ,x3)
   
 
   
   
end