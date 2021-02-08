# Curse of dimensionality
![](.6_Feature_projection_images/9c6022ee.png)
Dimension 
- complete coverage requires exponentially 
  
- otherwise spareness
![](.6_Feature_projection_images/44e62c68.png)
## 1. Redundant Features
### Correlation
## 2. Manifold 
- Eudiance Distance is meaningless


# 1. PCA - unsupervised
## Assumption
![](.6_Feature_projection_images/5c0e5e18.png)
4. **No significant** outliers
## 1.1 Projection to new base
> - **Project original features** to axis 
that maximize variation of projected feature  
> - the axis is the **eigen vector** of <font color='red'>**covariance matrix**</font>...

![](.4_7_Covariance_matrix_images/6f116fbd.png)
![](.4_7_Covariance_matrix_images/36a718bf.png)
![](.4_7_Covariance_matrix_images/9b76050f.png)
![](.4_7_Covariance_matrix_images/76ec6abb.png)
![](.4_7_Covariance_matrix_images/d78cbe37.png)
### New base is eigenvector of covariance matrix

## 1.2 Intuition
- Inherently, the covariance matrix gives the correlation between features
- The eigenvectors of symmetric matrix is orthogonal to each other.
- The eigenvalue gives the variance along that axis
- Project data onto the eigenvector (eigenvalue used to determined principle comp)
## 1.3 How - derivation

Project feature to axis to maximize variation
![](.6_Feature_projection_images/20e30b1f.png)
![](.6_Feature_projection_images/137d2a2d.png)

## PCA whitening
![](.6_Feature_projection_images/048ea736.png)

# 2. LDA - Supervised
>find projection to a line such that samples from
different classes are **well separated**
> ![](.6_Feature_projection_images/7f7a5945.png)

## Assumption
>Assumptions of discriminant analysis are the same as those for MANOVA. 

- **Multivariate normality**: Independent variables are normal for each level of the grouping variable.[9][7]
- **Homogeneity of variance/covariance (homoscedasticity)**: Variances among group variables are the same across levels of predictors. Can be tested with Box's M statistic.[9] It has been suggested, however, that linear discriminant analysis be used when covariances are equal, and that quadratic discriminant analysis may be used when covariances are not equal.[7]
- **Multicollinearity:** Predictive power can decrease with an increased correlation between predictor variables.[7]
- **Independence:** Participants are assumed to be randomly sampled, and a participant's score on one variable is assumed to be independent of scores on that variable for all other participants.[9][7]
## 2.1 What
Identify attributes that account for the **most variance** **between classes**
## 2.2 How
>Find a projection that maximizes the **difference in
the means** after projection:
![](.6_Feature_projection_images/62afc55c.png)
## 2.3 Intuition
>  The **eigenvalue** can be viewed as a **ratio of SSbetween and SSwithin** as in ANOVA when the dependent variable is the discriminant function, and the groups are the levels of the IV[clarification needed].[9] This means that the largest eigenvalue is associated with the first function, the second largest with the second, etc..
## 2.2 Compare with PCA
![](.6_Feature_projection_images/2ca88f19.png)

# 3. SVD