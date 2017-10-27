 I1 =imread('BwImage1.pgm');
 I2 =imread('BwMelih.pgm');

H1= imhist(I2);
c=1; 
[K L] = size(I1);
[M N] = size(I2);

for i=1:K-M
for j=1:L-N

I2 = I1(i:M+i,j:N+j);
H2 = imhist(I2);
distance(c) = pdist2(H1',H2','cosine');
c=c+1;

end
end

figure, plot(distance)
[B IX] = sort(distance,2, 'ascend');



first=floor(IX(1)/j);
second=rem(IX(1),j);

figure; imshow(I1);
line([second second], [first+M first] ,'linewidth', 2,'color','y');
line([second+N second], [first+M first+M] ,'linewidth', 2,'color','y');
line([second second+N], [first first] ,'linewidth', 2,'color','y');
line([second+N second+N], [first+M first] ,'linewidth', 2,'color','y');

