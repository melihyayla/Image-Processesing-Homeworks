%Question 3 
%We will create 4, 16, 32 subimages and sum their distance

%Taking two images to read 

I1 = imread('einstein.tif');
I2 = imread('cameraman.tif');

%Calling the function slice that makes number of sub of image that we
%initilize the number 

% first showing 2x2  4 subimages of two images
%x and y are axis that how many slices that we want (x * y is number of slices)
%x for row number, y for column number. so x=y=2

x=2;

y=2;

figure,showSubImage(I1,x,y);

figure,showSubImage(I2,x,y);

%find the subimages values 

%first 4 sub values of I1 and I2 (like this I1{1}, I1{2},I1{3},I1{4})

value1 = border(I1,x,y);

value2 = border(I2,x,y);

% find distance of subimages 

distance1 = findDistance(value1,value2,x,y);

% first showing 4x4  16 subimages of two images
%x and y are axis that how many slices that we want (x * y is number of slices)
%x for row number, y for column number. so x=y=4

x=4;

y=4;

figure,showSubImage(I1,x,y);

figure,showSubImage(I2,x,y);

%find the subimages values 

%first 4 sub values of I1 and I2 (like this I1{1}, I1{2},I1{3},I1{4}...)

value1 = border(I1,x,y);

value2 = border(I2,x,y);

% find distance of subimages 

distance2 = findDistance(value1,value2,x,y);

% first showing 4x8  16 subimages of two images
%x and y are axis that how many slices that we want (x * y is number of slices)
%x for row number, y for column number. so x=4 , y=8

x=4;

y=8;

figure,showSubImage(I1,x,y);

figure,showSubImage(I2,x,y);

%find the subimages values 

%first 4 sub values of I1 and I2 (like this I1{1}, I1{2},I1{3},I1{4}...)

value1 = border(I1,x,y);

value2 = border(I2,x,y);

% find distance of subimages 

distance3 = findDistance(value1,value2,x,y);





