function [obj,d_K,d_theta]=CNN_gradient(X,y,Ks,stride,theta,activation_fun,obj_fun)
%%
% X = images(:,:,2);
% X = X_train(:,:,1);
% Ks=K;
% y=[0];

    [W,H] = size(X);
    [M,~,N] = size(Ks);
    [obj,yp,h,idx_select] = CNN_forward(X,y,Ks,stride,theta,activation_fun,obj_fun);
    
    % gradient of K and theta
    switch activation_fun  % derative from activation function
       case 'linear'
           d_activation = 1;
       case 'logistic'
           d_activation = (yp.*(1-yp));
       case 'softmax'
           idx = y==1;
           d_activation = yp(idx).*(y-yp);
       otherwise
            warning('Please choose among "linear","logistic","softmax" as the activation function')
    end   
    
    switch obj_fun  % derative from objective function
        case 'square error'
            d_obj = 2*(yp-y);
        case 'log likelihood'
            d_obj = (y-yp)./yp./(1-yp);
        case 'cross entropy'
            idx = y==1;
            d_obj = -y/yp(idx);
        otherwise
            warning('Please choose among "square error","log likelihood","cross entropy" as the objective function')
    end
    
    d_theta = h'*(d_obj.*d_activation);
%     d_theta = d_theta';
    dK_activation_obj = (d_obj.*d_activation)*theta';
    
    % CNN parts
    d_K = zeros(M,M,N);
    for kk=1:N
        for ii=1:M
            for jj=1:M
                dF_dK_ii_jj = X(H-ii+1:-1:M-ii+1,W-jj+1:-1:M-jj+1);
                dF_dK_select = dF_dK_ii_jj(idx_select(:,kk));
                d_K(ii,jj,kk) = dK_activation_obj(1+(kk-1)*size(dF_dK_select,1):kk*size(dF_dK_select,1))*dF_dK_select(:);
            end
        end
    end
   %%    
end
