function [obj,d_K,d_theta] = images_CNN_gradient(Xs,ys,Ks,stride,theta,activation_fun,obj_fun)
    obj=0;
    d_K=zeros(size(Ks));
    d_theta = zeros(size(theta));
    for ii=1:size(Xs,3)
        X = Xs(:,:,ii);
        y = ys(ii,:);
        [obj_t,d_K_t,d_theta_t]=CNN_gradient(X,y,Ks,stride,theta,activation_fun,obj_fun);        
        obj=obj+obj_t;
        d_K=d_K+d_K_t;
        d_theta = d_theta+d_theta_t;                
    end
    
    d_K = d_K/size(Xs,3);
    d_theta = d_theta/size(Xs,3);
end
