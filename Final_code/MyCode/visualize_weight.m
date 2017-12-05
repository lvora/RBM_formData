function [ ] = visualize_weight(weight_mat)
%VISUALIZE Summary of this function goes here
%   Detailed explanation goes here
w = weight_mat';
[row col] = size(w);
n_crop  = 463;
m_crop  = 1263;

    for i = 1:row
    J = reshape(w(i,:),[m_crop n_crop])';
    figure();
%     J = medfilt2(J);
    imshow(J,[]);
    end
end

