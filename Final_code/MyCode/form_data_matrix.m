function [ data_matrix ] = form_data_matrix( folder,oneRow,num_images )
%FORM_DATA_MATRIX 

 for i = 1:num_images
    
    str = sprintf('im%d.jpg',i);
    filename = strcat(folder,str);
    I = imread(filename);
    K = im2double(I);
    
    % Write them in a data_matrix
    
    A  = reshape(K',[1 oneRow]);
    data_matrix(i,:) = A;
 end 

end

