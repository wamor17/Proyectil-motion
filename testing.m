clear all, close all, clc

theta = 30;
for i=0:5
    img = rotate_img(i, theta);
    imshow(img)
    pause(0.01)
end

for i=5:-1:0
    img = rotate_img(i, theta);
    imshow(img)
    pause(0.0001)
end    




