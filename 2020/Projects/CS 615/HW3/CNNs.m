function [Ks,theta]=CNNs(images,ys,Ks,theta,stride,activation_fun,obj_fun,rate,alpha)
% termination criterion
    eps  = 1e-3;
%     rng(seed_num)  % random state
   
    
    % plot the inital Kernel
 
    
    [J,d_K,d_theta]=images_CNN_gradient(images,ys,Ks,stride,theta,activation_fun,obj_fun);
    
    J_diff = 1; % initialization
    iter = 1;
    while J_diff>eps
        Ks = Ks + rate*d_K-alpha*Ks;
        theta = theta + rate*d_theta-alpha*theta;
        [obj,d_K,d_theta] = images_CNN_gradient(images,ys,Ks,stride,theta,activation_fun,obj_fun);
        J(end+1)=obj;
        iter = iter+1;
        J_diff = abs( (J(iter)-J(iter-1)) / J(iter-1) );
    end
    
    % plotting
    figure()
    plot(1:iter,J)
    xlabel('# of iteration')
    ylabel('Objective function')
    

end
