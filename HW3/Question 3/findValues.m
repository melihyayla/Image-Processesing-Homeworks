function [ result ] = findValues( vf,vg,x,y )
%This function finds each distance between each sub 
%i goes to according number that  multiple of x and y   
myd=0;
    for i=1:(x*y)
    
          myd =  myd + mydistance2(vf{i},vg{i});
    
    end
    
    result = myd ; 
end

