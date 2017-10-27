%Question 1 

%Reading Images with imread function
 I1=imread('einstein.jpg');
 I2=imread('Cameraman.bmp');
 I3=imread('PresidentObama.png');
 I4=imread('lenna1.png');
 
 figure,subplot(2,2,1), imshow(I1),title('Einstein - I1'), subplot(2,2,2), imshow(I2),title('Cameraman - I2'),subplot(2,2,3),imshow(I3),title('Obama - I3'), subplot(2,2,4), imshow(I4),title('Lenna - I4'); 
 
 figure,subplot(2,2,1), imhist(I1),title('Einstein - H1'), subplot(2,2,2), imhist(I2),title('Cameraman - H2'),subplot(2,2,3),imhist(I3),title('Obama - H3'), subplot(2,2,4), imhist(I4),title('Lenna - H4');
 
 %Finding images' histogram with imhist function
 H1 = imhist(I1);
 H2 = imhist(I2); 
 H3 = imhist(I3); 
 H4 = imhist(I4);
 
 %Finding cosine distance with 2 different formulas (according to cosine
 %formula)
 
 cosTheta = 1-(dot(H1,H2)/(norm(H1)*norm(H2)));
 
 distance = 1-(dot(H1,H2')/sqrt((dot(H1,H1')*dot(H2,H2'))));
 
 %Finding cosine distance with pdist2 function 
  
 distance2 = pdist2(H1',H2','cosine');
 
 
 % with different pair of images 
 distance3 = pdist2 (H1',H3','cosine');
 
 distance4 = pdist2 (H1',H4','cosine');
 
 distance5 = pdist2 (H2',H3','cosine');
 
 distance6 = pdist2 (H2',H4','cosine');
 
 distance7 = pdist2 (H3',H4','cosine');
 
 % Outputs 
 