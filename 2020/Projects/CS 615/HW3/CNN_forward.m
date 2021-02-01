function [obj,yp,h,idx] = CNN_forward(X,y,Ks,stride,theta,activation_fun,obj_fun)
    % CNN filters and pooling
    H = size(X,1);
    M = size(Ks,1);
    N = size(Ks,3);
    X_F_P = zeros((H-M+1)/stride,(H-M+1)/stride,N);
    idx = zeros(((H-M+1)/stride)^2,N);
    for kk = 1:size(Ks,3)
        % convolution
        X_F= conv2(X,Ks(:,:,kk),'valid');
        % max-pooling
        [X_F_P(:,:,kk),idx(:,kk)] = pooling(X_F,stride);
        
    end    
    % flattening
    h = X_F_P(:)';
    % output layer
    net_O = h*theta;    
    % activation function
    switch activation_fun
       case 'linear'
           net_O = net_O/norm(net_O);
           yp = net_O;
       case 'logistic'
           idx_logi = net_O<-10;
           net_O(idx_logi) = -10;
           yp = 1./(1+exp(-net_O));
       case 'softmax'
%            net_O = net_O/norm(net_O);
            yp = zeros(size(net_O)); 
            temp = net_O;
            if any(temp>20)  % hande large number pass to exp
                [~,idx_m] = max(temp);
                 yp(idx_m)=1;
            elseif all(temp<-20)
                    yp(:) = 1/size(yp,2);
            else
                softmax_func = exp(temp);
                 if sum(softmax_func)>1e-10  % handle extreme small value
                      yp= softmax_func/sum(softmax_func);
                end
            end
       otherwise
            warning('Please choose among "linear","logistic","softmax" as the activation function')
    end    
    
    yp_temp = yp;
    eps = 1e-15;
    idx_small = yp<eps; yp_temp(idx_small)=eps;  % deal with numerical issue
    idx_large = yp>1-eps;yp_temp(idx_large)=1-eps;
    switch obj_fun
        case 'square error'
            obj = sum((y-yp_temp).^2);
        case 'log likelihood'                      
            obj = sum(y.*log(yp_temp)+(1-y).*log(1-yp_temp));
        case 'cross entropy'
            obj = sum(-y.*log(yp_temp));
        otherwise
            warning('Please choose among "square error","log likelihood","cross entropy" as the objective function')
    end
    yp=yp_temp;
    
end