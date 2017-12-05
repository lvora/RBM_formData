%% Cleanup

clear all;
close all;

%% Adding to path:

addpath(genpath('MyCode'))
addpath(genpath('RBMLIB'));
%% Load data matrix RBMLIB implementation:
%load data_matrix_1; 
% load data_weights/data_matrix_crop_all_same;
% load data_weights/data_matrix_twoparts;

load data_weights/data_matrix_fourparts;


%% Model

num_hidden = 4;
num_epochs = 50;
m2= rbmBB(data_matrix,num_hidden,'maxepoch',num_epochs,'verbose',true);

%% Visualize or see weights associated with each hidden unit

weight_mat = m2.W;


%% Visualization:

visualize_weight(weight_mat);

%% MSE

a = mse(weight_mat(:,1),weight_mat(:,2));
b1 = mse(weight_mat(:,1)',data_matrix(1,:));
b2 = mse(weight_mat(:,2)',data_matrix(11,:));


%%
%reconstruct the images by going up down then up again using learned model
up = rbmVtoH(m2, data_matrix);
down= rbmHtoV(m2, up);

 %% To see reconstructed images
visualize_weight(down(1,:)');

%% To save reconstructed images:

let = down;
n_crop  = 463;
m_crop  = 1263;
for i = 1:20;

    str = sprintf('im%d.jpg',i);
    filename =strcat('data_results/recon_1hid_allsame',str);
    J = reshape(let(i,:),[m_crop n_crop])';
    imwrite(J,filename);

end
    

