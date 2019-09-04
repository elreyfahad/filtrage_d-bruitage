function hough_line(im)
f=imread(im);
g = edge(f,'Canny',0.2);
[H, T, R] = hough(g);
imagesc(T,R,H); xlabel('theta'); ylabel('rho');
P = houghpeaks(H,6,'Threshold',0.1);
plot(T(P(:,2)),R(P(:,1)),'s','color','white');

lines = houghlines(g,T,R,P,'FillGap',1e4,'MinLength',2);

for k = 1:length(lines)
    xy= [lines(k).point1; lines(k).point2];
    plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
end
end