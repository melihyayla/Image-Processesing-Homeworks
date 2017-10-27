function [ result ] = findValues( vf,vg,x,y )
%UNTÝTLED18 Summary of this function goes here
%   Detailed explanation goes here
myd=0;
    for i=1:(x*y)
    
          myd =  myd + mydistance2(vf{i},vg{i});
    
    end
    
    result = myd ; 
end

