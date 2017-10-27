% This code provides us to create the sift features of images and after that we can match them.

I1 = imread(fullfile(vl_root,'data','image1.jpg')) ;
I2 = imread(fullfile(vl_root,'data','Xue.jpg')) ;

% --------------------------------------------------------------------
%                      Extract features and match
% --------------------------------------------------------------------

figure; imshowpair(I1, I2, 'montage')
if size(I1,3)==3
	I1=rgb2gray(I1);
end

if size(I2,3)==3
    I2=rgb2gray(I2);
end




[fa, da] = vl_sift(im2single(I1)) ;
[fb, db] = vl_sift(im2single(I2)) ;

[matches, scores] = vl_ubcmatch(da, db, 5) ;


[tmp2 tmp] = size(matches(1,:));


for i=1:tmp
   matchedPoints(i,1) = fa(1, matches(1,i));
   matchedPoints(i,2) = fa(2, matches(1,i));
end


minXi = find(matchedPoints(:,1) == min(matchedPoints(:,1)));
minYi = find(matchedPoints(:,2) == min(matchedPoints(:,2)));
maxXi = find(matchedPoints(:,1) == max(matchedPoints(:,1)));
maxYi = find(matchedPoints(:,2) == max(matchedPoints(:,2)));

minX = matchedPoints(minXi(1),1);
minY = matchedPoints(minYi(1),2);
maxX = matchedPoints(maxXi(1),1);
maxY = matchedPoints(maxYi(1),2);

figure; imshow(I1);
line([minX minX], [minY maxY],'linewidth', 2,'color','y');
line([minX maxX], [maxY maxY],'linewidth', 2,'color','y');
line([maxX maxX], [minY maxY],'linewidth', 2,'color','y');
line([minX maxX], [minY minY],'linewidth', 2,'color','y');


figure; imshowpair(I1, I2, 'montage')


xa = fa(1,matches(1,:)) ;
xb = fb(1,matches(2,:)) + size(I1,2) ;
ya = fa(2,matches(1,:)) ;
yb = fb(2,matches(2,:)) ;

hold on ;
h = line([xa ; xb], [ya ; yb]) ;
set(h, 'color', 'y') ;

vl_plotframe(fa(:,matches(1,:))) ;
fb(1,:) = fb(1,:) + size(I1,2) ;
vl_plotframe(fb(:,matches(2,:))) ;
axis image off ;
