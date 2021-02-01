# 1. Optimization - function approximation
## 1.1 No free lunch theorem
For Inductive inference 
- Assumptions are made for a specific **learning task[dataset]** (prior distribution)
- Thus reduces the generability of the algorithm
- No one mothed dominates all others over all possible **datasets**
> There is no free lunch!  
>**Inductive Inference**- generalizing beyond the training data is impossible **unless** we add more assumptions **(Priors asserts)**

><font color='red'>This is usually done by bayes' inference</font>

## 1.2 [Bias and variance - two ways ](http://cs229.stanford.edu/summer2020/BiasVarianceAnalysis.pdf)
[Another](https://www.datacamp.com/community/tutorials/tutorial-ridge-lasso-elastic-net)   

The concepts of Bias and Variance are slightly different in the contexts of Statistics
vs Machine Learning, though the two are closely related in spirit.
Different from <font color='red'>**SSTO = SSR + SSE**</font> of linear regress
### 1.2.1 **Estimator(model) - statistical setting** 
![](.4_2_3_Overfitting_images/797a90f7.png)

**Bias error**: are the simplifying **assumptions made by a model** to make the target function easier to learn

>High-Bias: Suggests more assumptions about the form of the target function  
> ![](.4_2_3_Overfitting_images/72d6637a.png)

**Variance error**: 
Variance is the amount that the estimate of the target function will change if different training data was used. 
>High Variance:Suggests large changes to the estimate of the target function with changes to the training dataset.
> ![](.4_2_3_Overfitting_images/5844091d.png)


Low-variance machine learning algorithms include:
- Linear Regression, 
- Linear Discriminant Analysis and 
- Logistic Regression.  

High-variance machine learning algorithms include: 
- Decision Trees, 
- k- Nearest Neighbors and 
- Support Vector Machines

### 1.2.2 Bias-variance decomposition (of a specific ML model)
![](.ML_concepts_images/3165f524.png) 

 








# 2. Prevent overfitting
**Cross-validation --- Finding the best regularization parameter (Hyperparameter)**
## 2.1 Cross validation
## 2.2 [Regularization](https://charlesliuyx.github.io/2017/10/03/%E3%80%90%E7%9B%B4%E8%A7%82%E8%AF%A6%E8%A7%A3%E3%80%91%E4%BB%80%E4%B9%88%E6%98%AF%E6%AD%A3%E5%88%99%E5%8C%96/)
- Regularization applies to **objective functions** in ill-posed optimization problems.
- Only impact the learning process of coefficients
- The regularization term, or penalty, imposes a cost on the 
optimization function for overfitting the function or to find an optimal solution.  
- [Implement - LR](https://harvard-iacs.github.io/2018-CS109A/labs/lab-5/student/)


### 2.2.1 L1 and L2 Regularization

- **Loss function with no regularisation**:![picture 17](../../images/afefca53eb921199eee58dfed0a8299da8efc8c8d7b0c2c682e507592ce2da7f.png)  


- **Loss function with L1 regularisation**：![- **Loss function with L1 regularisation**： 1](../../images/02dee06293906c0f5d119654db23ea7420a560a7d52bbe8169cd303a5fee96a8.png)  
- **Loss function with L2 regularisation**:![picture 20](../../images/e5c352dffa40016bd37d64ec88a1a9dfff58cd8cdbf8992563f686644fcbe4da.png)  
   
Demonstrated by a two dim cases,[x1,x2],  
![picture 23](../../images/fe760d8787fa3530799a10a9274d9ac31c708199302f3f7ceb2cb771beb218cf.png)  
![picture 24](../../images/e70e24de974a697bd03f2d53371e41417f2404e06f02f4d2d3009255c5078042.png)  


### PCA
[Other regularization](https://en.wikipedia.org/wiki/Regularization_(mathematics)#Classification)
![picture 3](../../images/fb23b13f94a92b1dbf58cf9c0493063ef4daccd92903c0339331e87f5f013ff4.png)  


# 3. Data leakage

