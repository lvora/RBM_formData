
%% Form data matrix - 2 parts
% For any other data matrix formulation, enter dimensions of image and
% folder where image is stored
% Change below parameters as per requirement

folder = '/Users/lipivora/Documents/sem2/special problem/code/data_processed/20_twoparts/';
oneRow = 463*1263;
num_images = 20;
data_matrix = form_data_matrix(folder,oneRow,num_images);


%% SAve it

 save('data_weights/data_matrix_twoparts','data_matrix')
%% Form data matrix - 4 parts
folder = '/Users/lipivora/Documents/sem2/special problem/code/data_processed/20_fourparts/';
oneRow = 463*1263;
num_images = 20;
data_matrix = form_data_matrix(folder,oneRow,num_images);

save('data_weights/data_matrix_fourparts','data_matrix')