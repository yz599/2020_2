# [1. Overview-Important distributions](https://jonathan-hui.medium.com/machine-learning-summary-fundamental-6562ff7448a)
![picture 3](../../images/3385c70114c7592013958a97b31d244d5b2f3d44a3b6f944a4c711481e6603a5.png)  

| Dist  |Expression   |
|---|---|
| Bernoulli Dist   | ![picture 9](../../images/a83afe190779eaec6bf7fc12e082f5d2e649b9fa7f167f82bc0730fcbed6b0e0.png)  |   
 | Binomial Dist  |![  1](../../images/9a0c8c0f3c48bd139a2521872dd7cd06881e3aff0ae50e9d490116f9d96bc8d0.png)    |   
| Possion Dist   |![picture 7](../../images/0cce99b4c91993a3217dbfd6e5adccf173264fe1b192bf55789faacd77139359.png)    | 
| Exponential Dist  |  ![picture 10](../../images/94b963101c68a4958e2e94bfbd8de96cf0c2cee3e464c622fd97ccb0591d8b5e.png)  |
| Normal Dist   |![picture 8](../../images/c39d389e3280cead3d54851800554905e50b81b2aa9ab2d24f72d16b1243d0f9.png)  |
| multivariate normal dist |![](.1_3_1_Important_distribution_images/333ee46c.png)  |
![](.1_3_1_Important_distribution_images/4f11b06e.png)
---
[common distributions](https://www.itl.nist.gov/div898/handbook/eda/section3/eda366.htm)
![picture 5](../../images/2b4abbbdd911bad23af5afb033a7369053596d51284732abb9c477a0b59c8cd3.png)  
[Possion Dist](https://towardsdatascience.com/poisson-distribution-intuition-and-derivation-1059aeab90d)

[Beta distribution and Dirichlet distribution](https://towardsdatascience.com/beta-distribution-intuition-examples-and-derivation-cf00f4db57af)
# 2. Multivariate normal distribution
- Linear combination of standard normal distribution variables..(shift u, scale sigma, **rotate cov(x,y)**)
- (x-u)/sigma  standarlize x

![](.1_3_1_Important_distribution_images/64c6d146.png)
- x is a real k-dimensional column vector   
- ![](.1_3_1_Important_distribution_images/e588b00b.png)
- ![](.1_3_1_Important_distribution_images/4f11b06e.png)  

![](.1_3_1_Important_distribution_images/308fc2cf.png)  

## 2.0 Covariance matrix and [its eigenvector](https://www.visiondummy.com/2014/04/geometric-interpretation-covariance-matrix/)
![](.1_3_1_Important_distribution_images/37a8fe66.png)

![](.1_3_1_Important_distribution_images/853da29a.png)
![](.1_3_1_Important_distribution_images/bcf11363.png)  

### 2.0.1 Singular matrix - correlation:
![](.2_Linear_Algebra_images/7c57f0fb.png)
### 2.0.2 Eigen vector
![](https://www.visiondummy.com/wp-content/uploads/2014/04/eigenvectors.png)
- covariance matrix of our data is a diagonal matrix, 
- such that the covariances are zero, 
- that the variances must be equal to the eigenvalues \lambda

![](.1_3_1_Important_distribution_images/629683a1.png)
-  eigenvalues still represent the variance magnitude in the direction of the largest spread of the data,
-  the variance components of the covariance matrix represent the spread **along the axes**.
-  Original the variance magnitude in the direction of the **x-axis and y-axis**

Trace(A)=sum of eigenvalues of A
## 2.1  Mahalanobis distance
![](.1_3_1_Important_distribution_images/9d91e2f1.png)  
- represents the distance of the test point x from the mean mu. 
- when k=1, the distribution reduces to a univariate normal distribution and the Mahalanobis distance reduces to the absolute value of the standard score. 

[Geometric interpretation1](https://blogs.sas.com/content/iml/2012/02/15/what-is-mahalanobis-distance.html)
[Geometric interpretation2](https://www.visiondummy.com/2014/04/geometric-interpretation-covariance-matrix/)
## 2.2 Bivariate 
![](.1_3_1_Important_distribution_images/1482e821.png)
>ellipses, whose principal axes are defined by the eigenvectors of the covariance matrix Sigma.
## 2.3 [Eigenvectior](https://stats.stackexchange.com/questions/447266/multivariate-gaussian-normal-distribution-sigma-covariance-and-eigenvector)
![](.1_3_1_Important_distribution_images/3e69e9e3.png)

![](.1_3_1_Important_distribution_images/c17528f7.png)
![](.1_3_1_Important_distribution_images/308fc2cf.png)
![](.1_3_1_Important_distribution_images/6bc99d77.png)
![](.1_3_1_Important_distribution_images/a4b724dc.png)

https://piazza.com/class_profile/get_resource/iwgts4iuaq41h1/izu8e14rji55wk
https://www.byclb.com/TR/Tutorials/neural_networks/ch4_1.htm
https://www.byclb.com/TR/Tutorials/neural_networks/

[Reference](https://medium.com/@SeoJaeDuk/archived-post-multivariate-gaussian-distributions-and-entropy-3-991578ca534c)
## 2.4 [Bivariate correlation](http://www2.cmp.ue'a.ac.uk/~jrk/distribution/correlations/corr.html)
![](.1_3_1_Important_distribution_images/4f1991a9.png)




# 3. [Statistic test distributions - parametric](https://programming.vip/docs/5ef5604414c57.html)


[Classical EDA](https://www.itl.nist.gov/div898/handbook/eda/section3/eda3.htm)
- [Graph](https://www.itl.nist.gov/div898/handbook/eda/section3/eda34.htm)
- [Quantitative Techniques](https://www.itl.nist.gov/div898/handbook/eda/section3/eda35.htm)

Many of the quantitative techniques fall into two broad categories:
- Interval estimation
- Hypothesis tests

![](.1_3_1_Important_distribution_images/ed4b0a0e.png) ![](.1_3_1_Important_distribution_images/92c1a661.png)
[Ref](https://www.itl.nist.gov/div898/handbook/eda/section3/eda35.htm)

| Sampling Variable of interest:  | test  |
|---|---|
| mean   | z/t/F-test  |
| variance (M-distance)| chi-square  |
| proportion (mean) | z-test   |
| goodness of fit 1/proportion  |chi-square1|
| factor effect (LR correlation)  |chi-square (frequency)/F-test (mean)|
| median etc    |boostrap|

![](.1_3_1_Important_distribution_images/660c609d.png)

Assumptions:
- Z/t test (independent, normal or CTL)
- Chi-square(independent, normal, or CTL)= M-distance = squared z-score <font color='red'>non-parametric analysis </font>
- F-test (normal, independent, homogeneity of  **residuals** = LR )

>Techniques for comparing **means of normal populations** generally assume the populations have the same variance. 
ANOVA techniques - test whether this assumption of **homogeneity of variance** is reasonable. 


[1. Goodness of fit](https://www.itl.nist.gov/div898/handbook/prc/section2/prc21.htm)
- Chi-square test for continuous and discrete distributions;
- Kolmogorov-Smirnov test for continuous distributions based on the empirical distribution function (EDF);
- Anderson-Darling test for continuous distributions.

## 3.1 [t-test](https://sphweb.bumc.bu.edu/otlt/MPH-Modules/Menu/)
![](.1_3_1_Important_distribution_images/3f33fa0f.png)
- [One sample](https://www.kristakingmath.com/blog/test-statistics-for-means-and-proportions)
  ![](.1_3_1_Important_distribution_images/3379b40b.png)

- Two samples  
  ![](.1_3_1_Important_distribution_images/5653baef.png)
  
- Dependent/paired t-test
  ![](.1_3_1_Important_distribution_images/ece24c93.png)
- More than two sample - ANOVA

### [Z-score](https://www.machinelearningplus.com/statistics/mahalanobis-distance/)
## 3.2 Chi-square distribution
### Distribution
![](.1_3_1_Important_distribution_images/39305138.png)  

### Assumption
- **Parametric:** 
Test statistics that follow a Chi square distribution occur when the observations are independent and normally distributed, 
which assumptions are often justified under the central limit theorem. 
- **non-parametric:**
There are also chi-square tests for testing the null hypothesis of independence of a pair of random variables based on observations of the pairs.
---
### [Mahalanobis distribution (z-score)](https://onlinelibrary.wiley.com/doi/full/10.1002/cem.2680)
![](.1_3_1_Important_distribution_images/cab6d603.png)
![](.1_3_1_Important_distribution_images/8611f319.png)
![](.1_3_1_Important_distribution_images/12dfef3b.png)  
![](.1_3_1_Important_distribution_images/4bad1060.png)
![](.1_3_1_Important_distribution_images/b9a281ac.png)  
![](.1_3_1_Important_distribution_images/32a36631.png)
> - Multidimension distance doesn't have a sign so squared value is used
> - M distance is sum of squared z score 
>- This result can be used to evaluate (subjectively) whether a data point may be an outlier and 
whether observed data may have a multivariate normal distribution.

![](.1_3_1_Important_distribution_images/fcfda7fb.png)  
![](.1_3_1_Important_distribution_images/9b25928a.png)
### 3.2.1 Contingency table
[ref](https://www.datascienceblog.net/post/statistical_test/contingency_table_tests/)
![](.1_3_1_Important_distribution_images/84195e60.png)  




## 3.3 F-distribution
### Distribution
![](.1_3_1_Important_distribution_images/924efa56.png) 

---
### Assumption
In addition to the quantitative ANOVA output, it is recommended that any analysis of variance be complemented with model validation. At a minimum, this should include

- A run sequence plot of the residuals.
- A normal probability plot of the residuals.
- A scatter plot of the predicted values against the residuals.

[Univariate measurement process](https://www.itl.nist.gov/div898/handbook/eda/section3/eda355.htm)

### Purpose
![](.1_3_1_Important_distribution_images/8b389112.png)

The F distribution is the **ratio of two chi-square distributions** with degrees of freedom ν1 and ν2, respectively, 
where each chi-square has first been divided by its degrees of freedom. 
### F-test and t-test
![](.1_3_1_Important_distribution_images/e030d08a.png)
### 3.3.1 ANOVA  
The ANOVA is based on the law of total variance, 
where the observed variance in a particular variable is partitioned into components 
attributable to different sources of variation. 
In its simplest form, ANOVA provides a statistical test of whether two or more population means are equal, 
and therefore generalizes the t-test beyond two means. 

**[Intuition:](https://en.wikipedia.org/wiki/Analysis_of_variance)**  

![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Anova%2C_no_fit..png/330px-Anova%2C_no_fit..png)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/ANOVA_fair_fit.jpg/330px-ANOVA_fair_fit.jpg)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/ANOVA_very_good_fit.jpg/330px-ANOVA_very_good_fit.jpg)

**Application:**  
Classical" ANOVA for balanced data does three things at once:

- As exploratory data analysis, an ANOVA employs an additive data decomposition, and its sums of squares indicate the variance of each component of the decomposition (or, equivalently, each set of terms of a linear model).
- Comparisons of mean squares, along with an F-test ... allow testing of a nested sequence of models.
- Closely related to the ANOVA is a linear model fit with coefficient estimates and standard errors.[12]

**Assumption:**  
The normal-model based ANOVA analysis assumes the **independence, normality and homogeneity of variances** of the **residuals**.

**How: Partitioning of the sum of squares**  

the model for a simplified ANOVA with one type of treatment at different levels:
![](.1_3_1_Important_distribution_images/768d0170.png)

- partitioning of the total sum of squares SS into components related to the effects used in the model. 

- one of these components (that for error) specifies a **chi-squared distribution **which describes the associated sum of squares

**F-test**  
![](.1_3_1_Important_distribution_images/34ecd229.png)  
![](.1_3_1_Important_distribution_images/09fc3e33.png)
![](.1_3_1_Important_distribution_images/5b0bcdcc.png)

### 3.3.2 [Linear regression](http://www.stat.yale.edu/Courses/1997-98/101/anovareg.htm#:~:text=Analysis%20of%20Variance%20(ANOVA)%20consists,(yi%20%2D%20i).)

![](.1_3_1_Important_distribution_images/f8af3799.png)


- <font color='red'>SST=SSM+SSE</font>
- Correlation: <font color='red'>r² = SSM/SST</font>
 >explaining the fraction of variability in the data explained by the regression model.

- Null hypothesis beta=0;<font color='red'> F=SSM/SSE</font>

> When the MSM term is large relative to
the MSE term, then the ratio is large and there is evidence against the
null hypothesis.

![](.1_3_1_Important_distribution_images/92af9f6a.png)
![](.1_3_1_Important_distribution_images/eaa6c13c.png)

### 3.3.3 Factor effect
![](.1_3_1_Important_distribution_images/ab856a84.png)


# Examples
# 4. [Nonparametric test](https://sphweb.bumc.bu.edu/otlt/mph-modules/bs/bs704_nonparametric/bs704_nonparametric_print.html)