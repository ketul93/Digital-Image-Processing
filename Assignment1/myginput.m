%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to pick n feature points on images.
% Usage: [r,c] = myginput(n,u);
% Input: n - Number of points to be selected.
%        u - Image, either grayscale or RGB. Note that the function will
%            automatically convert the RGB image into grayscale.
% Output: r,c - n x 1 vectors, containing row and column indices of points
%            selected. Note the values will be floating point numbers!
% Author: Aditya Tatu
% Date: 10/1/2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [r,c] = myginput(n,u)
if size(u,3) ~= 1
    u = rgb2gray(u);
end
r = zeros(n,1);
c = zeros(n,1);
figure;
imshow(uint8(u));
for i = 1:n
    [x,y] = ginput(1);
    r(i) = y;
    c(i) = x;
    hold on;plot(x,y,'rx');
end

    
