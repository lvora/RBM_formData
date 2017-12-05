%% Supervised learning:

labels = [ones(1,10) 2*ones(1,10)]';
%% Load data
load data_weights/data_matrix_twoparts;

%% pass data for supervised learning:
num_hidden = 2;
m=rbmFit(data_matrix,num_hidden,labels,'verbose',true);

%% Visualize or see weights associated with each hidden unit

weight_mat = m.W;
visualize_weight(weight_mat);

%% Try to predict:
load data_matrix_2units;
testdata = data_mat;

yhat=rbmPredict(m,testdata);


% data_mat = zeros(2,584769);
% data_mat(1,:) = data_matrix(1,:);
% data_mat(2,:) = data_matrix(20,:);
% %%
% save('data_matrix_2units','data_mat');