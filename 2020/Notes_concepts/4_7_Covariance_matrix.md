**<font color='red'>Eigen-decomposition -- PCA</font>**

![](.4_7_Covariance_matrix_images/8dd2295a.png)

**<font color='red'>Cholesky decomposition -- MultiG</font>**

![](.4_7_Covariance_matrix_images/52399e6e.png)
> [Eigenvalues of R are square roots of eigenvalues of A](https://math.stackexchange.com/questions/2903455/a-simple-proof-for-the-relationship-between-the-eigenvalues-of-a-positive-defini)

> R is an upper triangular matrix with positive diagonal entries  

**<font color='red'>The concept of covariance matrix is important in </font>**
- PCA
- Multi Gaussian distribution (Naive Bayesian classifier)
- Mahalanobis distance
- LDA

# 1. How to compute
> Row 1: feature 1 * feature 1,2,...n  

![](.1_3_1_Important_distribution_images/853da29a.png)
![](.1_3_1_Important_distribution_images/bcf11363.png)  

# 2. PCA - project feature to eigenvector
## 2.1 Projection to new base 
![](.4_7_Covariance_matrix_images/6f116fbd.png)
![](.4_7_Covariance_matrix_images/36a718bf.png)
![](.4_7_Covariance_matrix_images/9b76050f.png)
![](.4_7_Covariance_matrix_images/76ec6abb.png)
![](.4_7_Covariance_matrix_images/d78cbe37.png)
## 2.2 New base is eigenvector of covariance matrix
![](.4_7_Covariance_matrix_images/bf819f02.png)
![](.4_7_Covariance_matrix_images/d6fb6d53.png)

## Intuition
- Inherently, the covariance matrix gives the correlation between features
- The eigenvectors of symmetric matrix is orthogonal to each other.
- The eigenvalue gives the variance along that axis
- Project data onto the eigenvector (eigenvalue used to determined principle comp)
![](.4_7_Covariance_matrix_images/b527006b.png)

# 3. Mahalanobis distance   
![](.1_3_1_Important_distribution_images/9d91e2f1.png) 
   
it provides a way to measure distances that takes into account the scale of the data.

## 3.1 [Distance measure by probability (standard deviation)](https://blogs.sas.com/content/iml/2012/02/15/what-is-mahalanobis-distance.html)
- In statistics, we sometimes measure "nearness" or "farness" in 
terms of the scale of the data. Often "scale" means **"standard deviation.**
- For many distributions, such as the normal distribution, 
this choice of scale also makes a statement about **probability**.
- z-score of x is the quantity z = (x-miu)/sigma - the number of standard deviations that x is from the mean.


![](.4_7_Covariance_matrix_images/b2dba2c4.png)
- bivariate normal data that is overlaid with prediction ellipses.
- The ellipses in the graph are the 10% (innermost), 20%, ..., and 90% (outermost) 
prediction ellipses for the **bivariate normal distribution that generated the data**. 

|   |Euclidean distances   |standard deviation   |  
|---|---|---|
|(4,0)   | 4  |  75% prediction ellipse |  
| (0,2)   | 2  | 90% prediction ellipse  |  

 
- variance in the Y direction is less than the variance in the X direction,
- so in some sense the point (0,2) is "more standard deviations" away from the origin than (4,0) is.
- point at (4,0) is "closer" to the origin in the sense that you are **more likely to observe** an observation near (4,0) than to observe one near (0,2). 
- The probability density is higher near (4,0) than it is near (0,2).

> above explains why the Euclidean distance is not a good measurement in this case
## 3.2 Compute M distance by Eudiance distance - z score



# 4 [Cholesky transformation by Cholesky matrix](https://blogs.sas.com/content/iml/2012/02/08/use-the-cholesky-transformation-to-correlate-and-uncorrelate-variables.html)
![](.4_7_Covariance_matrix_images/52399e6e.png)  

**<font color='red'>MVN(0,I) -- MVN(0,SIGMA)</font>**
- SIGMA gives a new variance and correlation of two independent normal distribution
- If Diagonal, only stretch
- D=square root eigen value * eigenvector matrix (scaling and rotation/relation)
- MVN(miu,SIGMA)- shifts miu  
- The covariance matrix defines the shape of the data. 
  - Diagonal spread is captured by the covariance, 
  - while axis-aligned spread is captured by the variance.
  ![](.4_7_Covariance_matrix_images/e83d736c.png)

## 4.1 Correlate variables 
- Cholesky matrix transforms **uncorrelated variables** into variables whose variances and covariances are given by Sigma
>if you generate **p standard normal variates**, the Cholesky transformation maps the variables into variables for 
>the multivariate normal distribution with covariance matrix sigma and centered at the origin (denoted MVN(0, sigma)).
- Given the covariances between variables, did you know that you can write down an invertible linear transformation that "uncorrelates" the variables? 
![](.4_7_Covariance_matrix_images/23155a07.png)
### 4.1.1 Scaling -diagonal
![](.4_7_Covariance_matrix_images/fbea0281.png) 
![](.4_7_Covariance_matrix_images/cdd83dea.png)

![](https://blogs.sas.com/content/iml/files/2012/02/choleskytransform1.png) 

### 4.1.2 Scaling and rotation  
![](.4_7_Covariance_matrix_images/85ad30dd.png)
![](.1_3_1_Important_distribution_images/4f1991a9.png) 
### 4.1.3 Decorrelate variables and compute z-score
![](.4_7_Covariance_matrix_images/359e10ad.png)  
After transforming the data, you can compute the standard **Euclidian distance** from the point z to the **origin**.
![](.4_7_Covariance_matrix_images/c5254fad.png)    
You can rewrite zTz in terms of the original correlated variables:  

![](.4_7_Covariance_matrix_images/13e9507d.png)

>The Mahalanobis distance accounts for the variance of each variable and the covariance between variables. Geometrically, it does this by transforming the data into **standardized uncorrelated data**
> and computing the **ordinary Euclidean distance** for the transformed data.