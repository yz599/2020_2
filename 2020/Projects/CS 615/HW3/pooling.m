function [X_P,idx] = pooling(X,stride)
   % max-pooling
    X_P = zeros(size(X,1)/stride,size(X,2)/stride);
    idx=[];
    for jj=1:size(X_P,1)
        for ii = 1:size(X_P,2)
            temp = X(1+(ii-1)*stride:ii*stride,1+(jj-1)*stride:jj*stride);
            max_temp = max(temp(:));
            idx_temp = find(temp==max_temp);
            if idx_temp
                idx(end+1) = ((jj-1)*stride + ceil(idx_temp(1)/stride)-1)*size(X,1) + (ii-1)*stride +idx_temp(1)-(ceil(idx_temp(1)/stride)-1)*stride;
            else
                idx(end+1) = (jj-1)*stride + 1;
            end
            X_P(ii,jj) = max_temp;
        end
    end
end