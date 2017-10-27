function [ result ] = myfact( n )
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here

result = 1 ;


if (n<=1)
    result = 1;
else
    while(n>1)
        result = result * n;
        n= n-1;
    end
end




end

