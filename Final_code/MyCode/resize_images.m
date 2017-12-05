load fileList.mat

%for k = 1:length(fileList)
    k = 1;
    
    filename = strcat('20forms/',fileList{k}) ; 
    I = imread(filename);
    J = imresize(I,[2380 1868]);
    filename = strcat('20Forms_Cropped',fileList{k}) ;
    imwrite(J,filename);
%end

fn = '/Users/lipivora/Documents/sem2/special problem/code/resize_crop/im1.jpg';
imread(fn);