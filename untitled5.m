clc; clear; close all;            %andaze aks
img = imread("photo.jpg");

imshow(img);

a = size (img,1);
b = size (img,2);
img2 = zeros(a/2,b/2,3);
for i = 1:a/2
    for j = 1:b/2 
        img2(i,j,:) = img ((i*2) - 1, (j*2-1), :);
    end
end
img2 = uint8(img2);
figure
imshow(img2);

img3 = zeros (a/2,b/2,3);
for i = 1:a/2
   for j = 1:b/2
    img3(i,j,:) = img ((i*2),(j*2),:);
   end
end
img3 = uint8(img3);
figure
imshow(img3);
