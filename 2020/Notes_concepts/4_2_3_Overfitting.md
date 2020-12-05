# 1. Optimization - function approximation
## 1.1 No free lunch theorem
For Inductive inference 
- Assumptions are made for a specific **learning task[dataset]** (prior distribution)
- Thus reduces the generability of the algorithm
- No one mothed dominates all others over all possible **datasets**
> There is no free lunch!  
>**Inductive Inference**- generalizing beyond the training data is impossible **unless** we add more assumptions **(Priors asserts)**

><font color='red'>This is usually done by bayes' inference</font>

### 1.1.1 Over/underfitting - bias and variance
**Bias error**: are the simplifying **assumptions made by a model** to make the target function easier to learn

High-Bias: Suggests more assumptions about the form of the target function
>Underfitting(biased)

**Variance error**: 
Variance is the amount that the estimate of the target function will change if different training data was used. 

**High Variance:** Suggests large changes to the estimate of the target function with changes to the training dataset.
>Overfitting (High variance)

![](.ML_concepts_images/3165f524.png)  

Low-variance machine learning algorithms include:
- Linear Regression, 
- Linear Discriminant Analysis and 
- Logistic Regression.  

High-variance machine learning algorithms include: 
- Decision Trees, 
- k- Nearest Neighbors and 
- Support Vector Machines

### 1.1.2 Prevent overfitting
#### Cross validation
#### [Regularization](https://charlesliuyx.github.io/2017/10/03/%E3%80%90%E7%9B%B4%E8%A7%82%E8%AF%A6%E8%A7%A3%E3%80%91%E4%BB%80%E4%B9%88%E6%98%AF%E6%AD%A3%E5%88%99%E5%8C%96/)
- Regularization applies to **objective functions** in ill-posed optimization problems.
- Won't impact the 
- The regularization term, or penalty, imposes a cost on the 
optimization function for overfitting the function or to find an optimal solution.  

[Other regularization](https://en.wikipedia.org/wiki/Regularization_(mathematics)#Classification)
![picture 3](../../images/fb23b13f94a92b1dbf58cf9c0493063ef4daccd92903c0339331e87f5f013ff4.png)  



