function [ myresult ] = mydistance2( x,y )
%Takes two input that are initiliazed by imread function (matrix of image)
%Calculates the cosine distance of two image
     
%find the histogram of images
     H1=imhist(x);
          
     H2=imhist(y);
     
%find the distance of image     
     myresult = 1-(dot(H1,H2')/sqrt((dot(H1,H1')*dot(H2,H2'))));

end

