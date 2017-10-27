function [ val ] = border( f,x,y )
%UNTÝTLED6 Summary of this function goes here
%   Detailed explanation goes here
[M,N] = size(f);

counter = 1;

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
          
          val{counter}=f(v1:v2,v3:v4);
          
          counter=counter+1;
    end
end

