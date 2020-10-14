ML -Looking for Joint probability model  
Continued lecture 1 and 2

## 2. Machine learning and joint distribution
Machine learning is looking for a conditional probability P(Y|X) by finding joint distribution

### 2.1 Inference with the Joint distribution
![](.ML_probability_images/aa828c33.png)
![](.ML_probability_images/39d89963.png)

<font color='red'>Example:  

![](.ML_probability_images/f8fbc047.png)  

_**The 4th column shows share of the examples and hence the table is actually a dataset..**_

> <font color='red'>The joint distribution allows us to compute the joint probability/marginal prob and hence conditional prob P(Y|X) 

![](.ML_probability_images/0197a561.png)
![](.ML_probability_images/d18220df.png)
![](.ML_probability_images/5e005ff3.png)


1.	Suppose we want to learn the function f: <G, H> —>W >>

2.	Equivalently, P(W | G, H)   Solution: learn joint distribution from data, calculate P(W | G, H)   

e.g., P(W=rich | G = female, H = 40.5)= ![](.ML_probability_images/8da29a62.png)

#### 2.1.1 How to find the joint distribution - MLE/MAP

