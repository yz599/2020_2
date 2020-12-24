# Logistic regression

# 1. Sigmoid/logistic function
![](.2_Logistic_regression_images/86fd71bc.png)

## 1.1 Geometric interpretation
![](../.Neural_net_work_images/58141733.png)
![](../.Neural_net_work_images/8c45874f.png)  

**<font color='red'>Actually, it's determined by distance to the line Wx+b**
## 1.2 Statistical meaning
![](.2_Logistic_regression_images/5299c4ee.png)  
![](.2_Logistic_regression_images/3c706bd3.png)  

**<font color='red'>Naive Bayes Classifier**
![](.2_Logistic_regression_images/e59f5e5f.png)

# 2. Cost function
## 2.1 MLE - maximize log likelihood
- One observation - binomial dist  
MLE - ![](.2_Logistic_regression_images/9dd34ee1.png)  
Log - ![](.2_Logistic_regression_images/416c68bc.png)

- Entire dataset  
`Observation are conditionally independent of one another`
![](.2_Logistic_regression_images/87371a70.png)  
![](.2_Logistic_regression_images/4bc008ef.png)

## 2.2 Gradient  
![](.2_Logistic_regression_images/54a9ab54.png) 

**<font color='red'>This is (almost) the same form as the least squared
error for linear regression**

![](.2_Logistic_regression_images/5dc4a537.png)

