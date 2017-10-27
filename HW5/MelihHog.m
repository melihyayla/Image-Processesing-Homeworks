% VL_DEMO_HOG  Demo: HOG features

% Author: Andrea Vedaldi

% AUTORIGHTS



% --------------------------------------------------------------------
%                                                        Load a figure
% --------------------------------------------------------------------

im = imread(fullfile(vl_root,'data','Melih.jpg')) ;
im = im2single(im) ;

figure(1) ; clf ;
image(im) ;
axis equal off tight ;

% --------------------------------------------------------------------
%                                                 Compute HOG features
% --------------------------------------------------------------------

% Standard features
cellSize = 12 ;
hog = vl_hog(im, cellSize, 'verbose') ;
imhog = vl_hog('render', hog, 'verbose') ;

figure(3) ; clf ;
imagesc(imhog) ;
axis image off ; colormap gray ;






% --------------------------------------------------------------------
%                                                        Load a figure 2
% --------------------------------------------------------------------

im2 = imread(fullfile(vl_root,'data','Image1.jpg')) ;
im2 = im2single(im2) ;

figure(2) ; clf ;
image(im2) ;
axis equal off tight ;



% --------------------------------------------------------------------
%                                                 Compute HOG features 2
% --------------------------------------------------------------------

% Standard features
cellSize = 12 ;
hog2 = vl_hog(im2, cellSize, 'verbose') ;
imhog2 = vl_hog('render', hog2, 'verbose') ;

figure(5) ; clf ;
imagesc(imhog2) ;
axis image off ; colormap gray ;

%==============
figure,imshow(mygrad1)
figure,imshow(mygrad2)
matchBox(im,im2);
