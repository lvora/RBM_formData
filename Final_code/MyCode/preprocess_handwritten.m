
%% ADD handwritten part to all same forms - filename paramter inside can be changed to modify this

thresh = 170;


HW = imread('Final_code/handwritten_im/handwritten_name.jpg');
oneRow = 463*1263;
num_images = 20;
% i = 1;
for i = 1:num_images
    
    str = sprintf('im%d.jpg',i);
    filename =strcat('Final_code/data_processed/normalized_images/crop/',str); 
    I = imread(filename);
    
    % Adding 2 images -> handwritten + original form:
    C = imfuse(I,HW,'blend');
% imshow(C)
% increasing the darkness of gray pixels:
D = C>thresh;
B = uint8(D);
G = B .* C;
 imshow(G)
    K = im2double(G);
    filename1 =strcat('Final_code/data_processed/handwritten/',str); 

%     Write them in a data_matrix
    imwrite(K,filename);
    A  = reshape(K',[1 oneRow]);
    data_matrix(i,:) = A;
end 
    
%%
save('data_weights/data_mat_handwritten_name','data_matrix')


%% Add handwritten part to all different forms - filename paramter inside can be changed to modify this

HW = imread('handwritten2.jpg');
oneRow = 463*1263;
num_images = 20;
% i = 1;
for i = 1:num_images
    
    str = sprintf('im%d.jpg',i);
    filename =strcat('Final_code/data_processed/normalized_images/crop/',str); 
    I = imread(filename);
    
    % Adding 2 images -> handwritten + original form:
    C = imfuse(I,HW,'blend');

% increasing the darkness of gray pixels:
D = C>thresh;
B = uint8(D);
G = B .* C;
imshow(G)
    K = im2double(G);
     imwrite(G,strcat('Final_code/data_processed/hw_form',str));
%     Write them in a data_matrix
    
    A  = reshape(K',[1 oneRow]);
    data_matrix(i,:) = A;
end 