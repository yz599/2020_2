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
![picture 5](../../images/2b4abbbdd911bad23af5afb033a7369053596d51284732abb9c477a0b59c8cd3.png)  
[Possion Dist](https://towardsdatascience.com/poisson-distribution-intuition-and-derivation-1059aeab90d)

# 2. Multivariate normal distribution
![](.1_3_1_Important_distribution_images/64c6d146.png)
- x is a real k-dimensional column vector   
- ![](.1_3_1_Important_distribution_images/e588b00b.png)
- ![](.1_3_1_Important_distribution_images/4f11b06e.png)
## 2.1  Mahalanobis distance
![](.1_3_1_Important_distribution_images/9d91e2f1.png)  
- represents the distance of the test point x from the mean mu. 
- when k=1, the distribution reduces to a univariate normal distribution and the Mahalanobis distance reduces to the absolute value of the standard score. 
## 2.2 Bivariate 
![](.1_3_1_Important_distribution_images/1482e821.png)

**<font color='red'>- explains why Ellipse**

![](.1_1_Bayes_inference_images/5f58de09.png)  
https://online.stat.psu.edu/stat505/lesson/4/4.2

>ellipses, whose principal axes are defined by the eigenvectors of the covariance matrix Sigma.
## 2.3 [Eigenvectior](https://stats.stackexchange.com/questions/447266/multivariate-gaussian-normal-distribution-sigma-covariance-and-eigenvector)
![](.1_3_1_Important_distribution_images/3e69e9e3.png)
![](.1_3_1_Important_distribution_images/a4b724dc.png)[Reference](https://online.stat.psu.edu/stat505/lesson/4/4.6)
## 2.4 [Bivariate correlation](http://www2.cmp.uea.ac.uk/~jrk/distribution/correlations/corr.html)
![](.1_3_1_Important_distribution_images/4f1991a9.png)




# 3. [Statistic test distributions](https://programming.vip/docs/5ef5604414c57.html)
## 1.1 [Beta distribution and Dirichlet distribution](https://towardsdatascience.com/beta-distribution-intuition-examples-and-derivation-cf00f4db57af)
## 1.2 Chi-square distribution
![picture 11](../../images/adf2cde20eeb27e3eb5dad049e6ce83b1f25b0ab53fb97a79aa579d5dff0994f.png) 
