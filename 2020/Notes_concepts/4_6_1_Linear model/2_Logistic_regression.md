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

## 1.3 Assume Gaussian dist of features - **Generative model**
- Split the data by class and build 
- <font color='red'>two features x=(sp Defence, Defense)
![](.2_Logistic_regression_images/1ada7588.png)
![](.2_Logistic_regression_images/da0b66b3.png)
![](.2_Logistic_regression_images/7c343711.png)

![](.2_Logistic_regression_images/e408a2c8.png)
# 2. Cost function - observations are conditionally independent of one another
## 2.1 A sequence of Bernoulli trials
![](.2_Logistic_regression_images/0bb168be.png)  

Recall that in **a sequence of Bernoulli trials** y1,... yn, where there is a constant
probability of success p, the likelihood is
![](.2_Logistic_regression_images/a1b9be9d.png)

>Originally, yi gives the **occurrences of the event**, when inference to **a single event**, yi should 
be the **probability of occurrences y** of the event..
>- which is the **true P** -- y is the real occurrence of the event determined by dataset)

## 2.2 MLE - (conditional) likelihood function
- One observation - binomial dist  
![](.2_Logistic_regression_images/9dd34ee1.png)  

![](.2_Logistic_regression_images/416c68bc.png)

- Entire dataset  
**<font color='red'>Observation are conditionally independent of one another</font>**
![](.2_Logistic_regression_images/87371a70.png)  
![](.2_Logistic_regression_images/4bc008ef.png)

## 2.3 Gradient  
![](.2_Logistic_regression_images/54a9ab54.png) 

**<font color='red'>This is (almost) the same form as the least squared
error for linear regression**

![](.2_Logistic_regression_images/5dc4a537.png)

