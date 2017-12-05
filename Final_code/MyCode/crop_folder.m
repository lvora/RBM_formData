function [ ] = crop_folder( folder,crop_dim,num_images )
%CROP_FOLDER Crop the images mentioned in folder and store in a different
%crop folder

for i = 1:num_images
    
    str = sprintf('im%d.jpg',i);
    fname = strcat(folder,str);
    J = imcrop(imread(fname),crop_dim);
    imwrite(J,strcat(folder,'crop/',str));
    
end

