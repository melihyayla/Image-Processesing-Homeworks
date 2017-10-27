# Image-Processesing-Homeworks
Basic matlab code for introduction to Image Processing and familiar with it's tools.

----------------------------------------------------------------------------------------------------
Homework 1 

Question 1: Question 1. Generate the following matrices(shapes) using the commands

Question 2: Find the solution to the following group of linear equations:
2x +3y + 5z + t = 1
4x +7y + 9z = 5
x +6y + 2t = 0
x + y + z – t = 5

Question 3: Read the image ('cameraman.tif') into an array img.
Make a top-down lipped copy img2.tif
a left-right lipped copy img3.tif
a copy sub-sampled by factor = 2 named img4.tif


Question 4: Create the binary (logical) arrays


----------------------------------------------------------------------------------------------------

Homework 2 

Question 1: Implement function myfact(n) that computes n!.
What is the maximum number MATLAB can compute its factorial?
Determine how much time it takes to compute.

Question 2: Explain in brief words the functionality of the following code.

vect = [0 0];
for i=3:2:20
vect(i-1) = (i-1)^2;
vect(i) = 0;
end

Question 3: Use find function to find the indices of elements equal to zero in vector .

Question 4: The area, A, A = sqrt(s*(s-a)*(s-b)*(s-c)). of a triangle with 
sides of length a, b and c is given by Where s = (a + b + c) /2.   
Write a MATLAB function that will accept the values a, b and c as inputs and return the value of A as output.


----------------------------------------------------------------------------------------------------

Homework 3

Question 1: Write Matlab code that read two gray scale images I1 and I2, find and plot their histograms H1 and H2, 
and then find the distance D(H1 , H2)= cos(H1 , H2). Try for different pair of similar images and show the results.

Question 2: Write Matlab code to apply Gaussian filter on both images I1 and I2 , then redo Q1 again.

Question 3: Question 3 = Write Matlab code that partition each of the images I1 and I2 into 4, 16, and 32 sub-images
I1i and I2i.
Then, find the histogram H1i and H2i of each partition. Then, find the distance:
D(H1 , H2)=sum(|cos(H1i , H2i)|)

----------------------------------------------------------------------------------------------------

Homework 4

Download the Yale face database from the http://vismod.media.mit.edu/vismod/classes/mas622-
00/datasets/ . or from here: http://vision.ucsd.edu/~iskwak/ExtYaleDatabase/ExtYaleB.html .

Question 1: Write Matlab program that asks the user to select first image file and second image file from the
folder that contains the images, and find the cosine distance function between them.

Question 2: Write Matlab program that ask user to select one image from the database folder and calculate
the distance function between it and all images in the database. Then, display the curve of these
distances. Next display the best five image matches, then image samples of the best three
persons.

----------------------------------------------------------------------------------------------------

Homework 5

Do face comparison with SIFT,HOG and your algorithm..

(HOG algorithm doesn't work properly)


----------------------------------------------------------------------------------------------------


