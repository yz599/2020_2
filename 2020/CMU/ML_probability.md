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

[Reference](https://towardsdatascience.com/bayesian-inference-intuition-and-example-148fd8fb95d6)  

- The core of Bayesian Inference is to combine two different distributions (likelihood and prior) into one “smarter” distribution (posterior). 
- Posterior is “smarter” in the sense that the classic maximum likelihood estimation (MLE) doesn’t take into account a prior. Once we calculate the posterior, we use it to find the “best” parameters and the “best” is in terms of maximizing the posterior probability, given the data. 
- This process is called Maximum A Posteriori (MAP). The optimization used in MAP is the same as the one used in typical machine learning, such as gradient descent or Newton’s method, etc.

<font color='red'>**Cost function_ corss entropy (KL-divergence) _ MAP _MLE**

##### MLE and MAP
[Reference1](https://wiseodd.github.io/techblog/2017/01/01/mle-vs-map/)  
[Reference2](https://miro.medium.com/max/1400/1*Y5NJF_SyPD3ogYfWDSz1GQ.png)

![](https://miro.medium.com/max/1400/1*Y5NJF_SyPD3ogYfWDSz1GQ.png)

- MLE  
<font color='red'>likelihood function P(X|θ)  
![](.ML_probability_images/38107e3b.png)
![](.ML_probability_images/ee1c6dc2.png)

- MAP   
<font color='red'>it works on a posterior distribution, not only the likelihood.  
![](.ML_probability_images/b1863c0c.png)

- Comparing both MLE and MAP equation, the only thing differs is the inclusion of prior P(θ) in MAP, otherwise they are identical.
- What it means is that, the likelihood is now **weighted with some weight coming from the prior**.


<font color='red'>Assume prior P(θ) is a **uniform distribution** and MAP=MLE  

![](.ML_probability_images/1659e506.png)  

if we use the simplest prior in MAP estimation, like a uniform prior, 
- we assign equal weights on all possible values of θ. 
- The implication is that the likelihood equivalently weighted by some constants. 
  - Being constant, we could be ignored from our MAP equation, as it will not contribute to the maximization.    

**If we use different prior, say, a Gaussian, then our prior is not constant anymore, 
as depending on the region of the distribution, the probability is high or low, never always the same.**




