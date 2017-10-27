img =  'C:\Users\melih\Desktop\Matlab\Cameraman.bmp' 
f = imread(img);
[M,N] = size(f)



% Question 1

a = zeros(4,4);
b = ones(4,4);
c = eye(4,4);

Mat1 = horzcat(a,c);
Mat2 = vertcat(a,c);
Mat3 = horzcat(a,b);

% Question 2

MatA = [2 3 5 1 ; 4 7 9 0 ; 1 6 0 2 ; 1 1 1 -1 ];

MatB = [1 5 0 5 ]; 

X = linsolve(MatA,MatB);

% Question 3

img =  'C:\Users\melih\Desktop\Matlab\Cameraman.bmp' 
f = imread(img);
rotate = imrotate(f,180,'bilinear');

imshow(rotate)

Image22 = imread('image3.bmp');
I1 = Image22(:,end:-1:1,:);

imshow(I1);


% Question 4 

a = zeros(16,16);
b = ones (16,16);

Mat1 = horzcat(a,b);
Mat2 = vertcat(a,b);
Mat3 =  tril(ones(32,32),-1) ;

Img1 = mat2gray(Mat1);
Img2 = mat2gray(Mat2);
Img3 = mat2gray(Mat3);

imwrite(Img1, 'image1.bmp');

imwrite(Img2, 'image2.bmp');

imwrite(Img3, 'image3.bmp');


