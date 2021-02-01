function [X_train,X_test,Y_train,Y_test]=data_read()
cd 'yalefaces'
files = ls;    % list all files
X = zeros(40,40,154);
y = zeros(154,1);
k=0;
for ii=1:length(files)  % channel
    if startsWith(files(ii),'s') % get all files start with 's' 
        k=k+1;
        file = files(ii,:);
        title= split(file,{'.',' '});
        score= str2double(regexprep(title{1},['^' 'subject'],'')); % strip prefix 'subject'
        y(k)=score;
        
        fileArray = imread(file);
        X(:,:,k)  = imresize(fileArray,[40 40]); % resize
    end
end
cd ../
%% Data preperation
% randomize the data
rng(20)  % random state
idx = randperm(154);
X = X(:,:,idx);
y = y(idx,:);

% number of classes
[~,GR] = groupcounts(y);
K = length(GR);

% split the train adn test dataset
ratio  = 2/3;
X_train = [];
y_train = [];
X_test = [];
y_test = [];   

% devide the data class-wise to ensure train adntest has close/identical priors
for ii=1:K
    idx_class_ii = find(y == GR(ii)); % find the idx for class GR(ii)
    N_class_ii = length(idx_class_ii);
    split_num = round(N_class_ii*ratio);
    
    X_train = cat(3,X_train,X(:,:,idx_class_ii(1:split_num)));
    y_train = [y_train;y(idx_class_ii(1:split_num))];
    
    
    X_test = cat(3,X_test,X(:,:,idx_class_ii(split_num+1:N_class_ii)));
    y_test = [y_test;y(idx_class_ii(split_num+1:N_class_ii))];    
end

% check the prior for each class in train and test set
[GC_train,GR_train] = groupcounts(y_train);
[GC_test,GR_test] = groupcounts(y_test);

% Verterize labels
Y_train = binary_vector(y_train,GR);
Y_test = binary_vector(y_test,GR);

end

function Y_b = binary_vector(y,GR)
% vertorize the 
    Y_b = zeros(size(y,1),size(GR,1));
    for ii = 1:size(y,1)
        Y_b(ii,:) = GR==y(ii);
    end
end