function showSubImage( f,x,y )
%Shows sub image on subplot
%M and N are size of F (image)  
%x and y are axis that how many slices that we want (x * y is number of slices)
%x for row number, y for column number.
%a is location of image on plot 
%formulas are improved by me ( v1, v2, v3, v4).

[M,N] = size(f);
a=1;

for i=1:x
    
    for j=1:y  
          v1 = (i-1)*M/x;
          v2 = (i-1)*M/x+M/x;
          v3 = (j-1)*N/y;
          v4 = (j-1)*N/y+N/y;
           
          if (i==1)
              v2=M/x;
              v1=1;
              
          end
          if(j==1)
              v4=N/y;
              v3=1;
          end
          
          val1=f(v1:v2,v3:v4);
  
          subplot(x,y,a),imshow(val1);
          
        a=a+1;
    end
end
end


