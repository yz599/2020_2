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

### 1.1.2 Prevent overfitting
#### Cross validation
#### Regularization

![picture 3](../../images/fb23b13f94a92b1dbf58cf9c0493063ef4daccd92903c0339331e87f5f013ff4.png)  

## 1.2 Gradient descent
[Optimization](https://ruder.io/optimizing-gradient-descent/)
- **Target**: find **theta** to minimize value of cost function  ![picture 8](../../images/1f414a3db11ba47069131ae8b877d90cf5b5f7a26b32868ab3903fe7a57403de.png)  

- **How**: move theta in a specific direction [gradient] to efficiently minimize loss function **from initial position**
- The gradient of z can be thought of the way (vector) to go towards the maxima/minima  
  
![picture 49](../../images/de86d5d51416a6154ae8bc27e2e5a7be8067be69c7583b3bd8cdb2375576ed7d.png)  

- [**Implement**](https://www.geeksforgeeks.org/ml-stochastic-gradient-descent-sgd/?ref=rp):  
[Three variants of GD](https://www.geeksforgeeks.org/ml-mini-batch-gradient-descent-with-python/?ref=rp)
  - [Batch Gradient Descent](https://ruder.io/optimizing-gradient-descent/index.html#gradientdescentvariants)
  - Stochastic Gradient Descent
  - [Mini-batch Gradient Descent](https://www.geeksforgeeks.org/ml-mini-batch-gradient-descent-with-python/?ref=rp)

>Gradient is a function of obervation....

|   |   |   |
|---|---|---|
| Batch  |  ![picture 9](../../images/7cd217b137245d77e32fab3d14c5e3f6fc1f245824c4ffca4848c225e386070f.png)  
 | entire training dataset  |
| SGD  | ![picture 10](../../images/2f4c6576e773055ac2bfaf6d2e5138b7320176eb1f25e87f18d982317c560bf1.png)  
  |  each training example |
| mini-batch  | ![picture 11](../../images/87a47ebba8ecd13134a25ac796d8e165a8a2f54295254e295806d6fe59ff1a3c.png)  
  | every mini-batch of n training examples  |

![picture 13](../../images/4d029ef0f5823c508396c689faea254912e502e8d52cfcbb544a7944de7d662c.png)  

![picture 14](../../images/1951046aa0d550c781521a500ea954be59b82d4c485f181172af8f4918193de2.png)  

![picture 15](../../images/ddb5521dee7d0c16b23a072b54e022445d5f183511d19198f5ca4b8383bfdfd8.png)  
![picture 16](../../images/652fbb205d14fdb71591ea5583e24ce27b118a0ea28b3d9e97e2b908395dac84.png)  

# 2. [Hyperparameter](https://www.analyticssteps.com/blogs/introduction-model-hyperparameter-and-tuning-machine-learning)

 - a hyperparameter is a parameter whose value is used to control the **learning process**.
 - By contrast, the values of other parameters (typically node weights) are derived via **training**.
 - Two categories:
   -  **model hyperparameters**, that cannot be inferred while fitting the machine to the training set because they refer to the **model selection task**, _-topology and size of a neural network_
   -  or **algorithm hyperparameters**, that in principle have no influence on the performance of the model but affect the **speed and quality of the learning process.** _- learning rate and mini-batch size._
   -  **Cross-validation** is often used to estimate this generalization performance.[2]

>For instance, LASSO is an algorithm that adds a **regularization hyperparameter** to ordinary least squares regression, which has to be set **before** estimating the parameters through the training algorithm.

# 3. Preprocessing data
## 3.1 [Why and when normalize/standarlize data](https://www.analyticsvidhya.com/blog/2020/04/feature-scaling-machine-learning-normalization-standardization/)  
[Reference](https://towardsdatascience.com/normalization-vs-standardization-quantitative-analysis-a91e8a79cebf)  
