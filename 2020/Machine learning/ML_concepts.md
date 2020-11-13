## 1. Optimization - function approximation
### 1.1 No free lunch theorem
For Inductive inference 
- Assumptions are made for a specific **learning task[dataset]** (prior distribution)
- Thus reduces the generability of the algorithm
- No one mothed dominates all others over all possible **datasets**
> There is no free lunch!  
>**Inductive Inference**- generalizing beyond the training data is impossible **unless** we add more assumptions **(Priors asserts)**

><font color='red'>This is usually done by bayes' inference</font>

#### 1.1.1 Over/underfitting - bias and variance
**Bias error**: are the simplifying **assumptions made by a model** to make the target function easier to learn

High-Bias: Suggests more assumptions about the form of the target function
>Underfitting(biased)

**Variance error**: 
Variance is the amount that the estimate of the target function will change if different training data was used. 

High Variance: Suggests large changes to the estimate of the target function with changes to the training dataset.
>Overfitting (High variance)


Low-variance machine learning algorithms include:
- Linear Regression, 
- Linear Discriminant Analysis and 
- Logistic Regression.  

High-variance machine learning algorithms include: 
- Decision Trees, 
- k- Nearest Neighbors and 
- Support Vector Machines