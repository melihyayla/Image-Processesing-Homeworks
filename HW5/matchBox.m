function [ result ] = matchBox( im,im2 )

I =im2;
object = im;
[m n o] = size(object);
c = normxcorr2(object(:,:,1),I(:,:,1));
[max_c, imax] = max(abs(c(:)));
[ypeak, xpeak] = ind2sub(size(c),imax(1));
corr_offset = [(xpeak-size(object,2)) (ypeak-size(object,1))];
figure, imshow(I); hold on;
rectangle('position',[corr_offset(1) corr_offset(2) n m],...
          'edgecolor','y','linewidth',2);

end

