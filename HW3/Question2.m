%Question 2

%Reading Images with imread function
 I1=imread('einstein.jpg');
 I2=imread('Cameraman.bmp');
 I3=imread('PresidentObama.png');
 I4=imread('lenna1.png');
 
 %Initilazing Gaussian Filter
 
 myFilter = [ 1 2 1, 2 4 2, 1 2 1]/16;
 
 % We can use initilazed Gaussian filter 
 
 filter1 = fspecial('gaussian',5, 10); % 5x5 Gaussian Filter with sigma=10
 filter2 = fspecial('gaussian',6, 12); % 3x3 Gaussian Filter with sigma=2

 %Applying Gaussian filter on images
 
 M1 = imfilter(I1,myFilter);
 M2 = imfilter(I2,myFilter);
 M3 = imfilter(I3,myFilter);
 M4 = imfilter(I4,myFilter);
 
%Showing filtered images
 figure,subplot(2,2,1), imshow(M1),title('Einstein - M1'), subplot(2,2,2), imshow(M2),title('Cameraman - M2'),subplot(2,2,3),imshow(M3),title('Obama - M3'), subplot(2,2,4), imshow(M4),title('Lenna - M4');
%Showing filtered images' histogram 
 figure,subplot(2,2,1), imhist(M1),title('Einstein - M1'), subplot(2,2,2), imhist(M2),title('Cameraman - M2'),subplot(2,2,3),imhist(M3),title('Obama - M3'), subplot(2,2,4), imhist(M4),title('Lenna - M4');
 
 %Applying second Gaussian filter on images
 G1 = imfilter(I1,filter1);
 G2 = imfilter(I2,filter1);
 G3 = imfilter(I3,filter1);
 G4 = imfilter(I4,filter1);
 
 figure,subplot(2,2,1), imshow(G1),title('Einstein - G1'), subplot(2,2,2), imshow(G2),title('Cameraman - G2'),subplot(2,2,3),imshow(G3),title('Obama - G3'), subplot(2,2,4), imshow(G4),title('Lenna - G4');
 figure,subplot(2,2,1), imhist(G1),title('Einstein - G1'), subplot(2,2,2), imhist(G2),title('Cameraman - G2'),subplot(2,2,3),imhist(G3),title('Obama - G3'), subplot(2,2,4), imhist(G4),title('Lenna - G4');
 
 %Applying third Gaussian filter on images
 Y1 = imfilter(I1,filter2);
 Y2 = imfilter(I2,filter2);
 Y3 = imfilter(I3,filter2);
 Y4 = imfilter(I4,filter2);
 
 figure,subplot(2,2,1), imshow(Y1),title('Einstein - Y1'), subplot(2,2,2), imshow(Y2),title('Cameraman - Y2'),subplot(2,2,3),imshow(Y3),title('Obama - Y3'), subplot(2,2,4), imshow(Y4),title('Lenna - Y4');
 figure,subplot(2,2,1), imhist(Y1),title('Einstein - Y1'), subplot(2,2,2), imhist(Y2),title('Cameraman - Y2'),subplot(2,2,3),imhist(Y3),title('Obama - Y3'), subplot(2,2,4), imhist(Y4),title('Lenna - Y4');
 
 %Finding third gaussian filtered images' histogram with imhist function
 H1 = imhist(M1);
 H2 = imhist(M2); 
 H3 = imhist(M3); 
 H4 = imhist(M4);
 
 %Finding cosine distance with pdist2 function 
 
 distance1 = pdist2(H1',H2','cosine');
 
 distance2 = pdist2 (H1',H3','cosine');
 
 distance3 = pdist2 (H1',H4','cosine');
 
 distance4 = pdist2 (H2',H3','cosine');
 
 distance5 = pdist2 (H2',H4','cosine');
 
 distance6 = pdist2 (H3',H4','cosine');
 
 % Outputs 
 
 
