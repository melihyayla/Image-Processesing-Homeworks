function [ N ] = Area(a,b,c)
%UNTİTLED2 Summary of this function goes here
%   Detailed explanation goes here
 
a = input('enter first number : ');
 
b = input('enter second number : ');
 
c = input('enter third number : ');
 
s = (a+b+c)/2;
 
N = sqrt(s*(s-a)*(s-b)*(s-c));
 
fprintf(' Result : %d ', N);
 
end
