# 1.Entropy
[Here is the reference](https://medium.com/@jonathan_hui/machine-learning-summary-fundamental-6562ff7448a)  

| Name  |Formula   |
|---|---|
| Information of an event   |  I(x) = -log(p(x)) |
| Entropy of a random variable   |![](https://miro.medium.com/max/700/1*ISBA6bFbft3RgSgk8hAFaw.jpeg)|
|  Cross entropy H(P,Q) |![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png)  |
|KL Divergence |![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg) ![](.ML_images/ad94a2c2.png)|
|Conditional entropy|![](https://miro.medium.com/max/1400/1*Fkcmkzp1uoML3fujNf2gYA.jpeg)|
|Information gain |![](https://miro.medium.com/max/1400/1*zc-hk1AKkKOwxvIS9TopZw.jpeg)|

![](https://miro.medium.com/max/1400/1*WMMz5lEbZEowSWoPJ0eR6w.jpeg)
![](https://miro.medium.com/max/1400/1*CICgG0p9CUKKgB__eXmj7A.jpeg) 

- <font color='red'>Cross entropy=conditional entropy
- <font color='red'>Information gain=KL Divergence （In decision tree）  
![](.ML_images/faa582f0.png)

---
## 1.1 Information
The Shannon **information content** is the amount of information gain when **an event x occurs**. Mathematically, it is defined as:  

![](https://miro.medium.com/max/700/1*wwQYSnXwUvW07x_kUMgI-Q.jpeg)  

In computer science, the information content can also be viewed as the number of bits to encode the information most efficiently

X is called a random variable if it holds a value generated from a random process (a stochastic process), e.g. the face value in rolling dice or the total number of heads after flipping a coin 20 times.

## 1.2 Entropy
**Entropy H** measures the expected information content of **a random variable**. To calculate the value, we sum up all information content with a weight equals to its occurrence frequency.  

![](https://miro.medium.com/max/700/1*ISBA6bFbft3RgSgk8hAFaw.jpeg)

## <font color='red'>**1.3 Cross entropy H(P,Q)**  
Cross-entropy H(P, Q) measures the expected number of bits to encode X with distribution P using an encoding scheme targeted for distribution Q.

![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png)

In ML, we want our predictions Q to match the ground truth P. If they match, **the cross-entropy will be the minimum** and therefore, we often use it as our training objective.  

![](https://miro.medium.com/max/700/1*kUXKKpUU_b9Y0cb_Zj6gjg.jpeg)

The cross-entropy for our example is
![](https://miro.medium.com/max/700/1*emraDRFHPR7fXpo4U3N7jg.jpeg)  

As shown above, the cost function for many classification problems is simply
![](https://miro.medium.com/max/700/1*jZFXNjzolcoN-LqcUB0h_w.jpeg)

### <font color='red'>**1.3.1 KL-divergence**  
KL-divergence measures the difference between two distributions P and Q.  
![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg)  

<font color='red'>Cross entropy -Entropy = KL Divergence

i.e., KL-Divergence measures the inefficiency of representing P with encoding scheme Q — the extra-bits to encode the information with the sub-optimal scheme. Therefore, KL-divergence is always greater or equal to zero

### <font color='red'>**1.3.2 Conditional Entropy**

The conditional entropy H(Y|X) is the entropy of Y given X is known. If Y can be separated according to X, this is the weighted entropy of the separated groups and calculated as:

![](https://miro.medium.com/max/1400/1*Fkcmkzp1uoML3fujNf2gYA.jpeg)  

![](.ML_images/232c0e1f.png)

![](.ML_images/ea24b30f.png)

### <font color='red'>**1.3.3 Information gain I(X,Y)- mutual information**
Mutual information (or Information gain) I(X; Y) is the information obtained on the random variable X when Y is observed.

![](https://miro.medium.com/max/1400/1*zc-hk1AKkKOwxvIS9TopZw.jpeg)

<font color="red"> Use KL-divergence for mutual information gain </font>

![](.ML_images/53e1bf68.png)

![](.ML_images/a12c1007.png)  


>**A could be seen as the features of the decision tree**

**Example**  

![](.ML_images/9fe260b2.png)

 
Information Gain is the expected reduction in entropy of target variable Y for data sample S, due to sorting on variable A
  
![](.ML_images/2a322803.png)


Intuitively, mutual information measures how much information do we gain by knowing Y? 
- If knowing Y gives us all the information about X, the conditional entropy H(X|Y) is zero because there is no more information we needed on X. The mutual information I becomes H(X) (or H(Y)).For example, if we know the label (Y) of an object, we gain a lot of information about its raw image (X). 
We should not mistake its picture with other objects. Therefore the information gain I(X;Y) is high. 

Let’s visualize this with sets. The mutual information is its overlap.
![](https://miro.medium.com/max/1400/1*ORqXN86SlaUSfjNvob-xSg.jpeg)

# 2. Cost function - MLE/MAP


<font color='red'>**Cost function_ cross entropy (KL-divergence) _ MAP _MLE**
- The core of Bayesian Inference is to combine two different distributions (likelihood and prior) into one “smarter” distribution (posterior). 
- Posterior is “smarter” in the sense that the classic maximum likelihood estimation (MLE) doesn’t take into account a prior. Once we calculate the posterior, we use it to find the “best” parameters and the “best” is in terms of maximizing the posterior probability, given the data. 
- This process is called Maximum A Posteriori (MAP). The optimization used in MAP is the same as the one used in typical machine learning, such as gradient descent or Newton’s method, etc.



## 2.1 What's MLE and MAP 
[Reference](https://towardsdatascience.com/bayesian-inference-intuition-and-example-148fd8fb95d6)  
[Reference1](https://wiseodd.github.io/techblog/2017/01/01/mle-vs-map/)  
[Reference2](https://medium.com/@jonathan_hui/machine-learning-summary-fundamental-6562ff7448a)
![](https://miro.medium.com/max/1400/1*e4YsqAyFBEa_MuXkC3rmXw.jpeg)


### 2.1.1 MLE  
<font color='red'>likelihood function P(X|θ)  
![](.ML_probability_images/38107e3b.png)
![](.ML_probability_images/ee1c6dc2.png)

### 2.1.2 MAP   
<font color='red'>it works on a posterior distribution, not only the likelihood.  
![](.ML_probability_images/b1863c0c.png)

- Comparing both MLE and MAP equation, the only thing differs is the inclusion of prior P(θ) in MAP, otherwise they are identical.
- What it means is that, the likelihood is now **weighted with some weight coming from the prior**.

## 2.2 MAP vs MLE
### <font color='red'>2.2.1 Assume prior P(θ) is a **uniform distribution** and MAP=MLE  

![](.ML_probability_images/1659e506.png)  

if we use the simplest prior in MAP estimation, like a uniform prior, 
- we assign equal weights on all possible values of θ. 
- The implication is that the likelihood equivalently weighted by some constants. 
  - Being constant, we could be ignored from our MAP equation, as it will not contribute to the maximization.    

### <font color='red'>2.2.2 Prior= a **Gaussian**,MAP = L2 regularization of MLE
**If we use different prior, say, a Gaussian, then our prior is not constant anymore, 
as depending on the region of the distribution, the probability is high or low, never always the same.**


<font color='red'> MAP turns into an L2-regularization term in the objective function </font>  
  
  
  
If we assume the model parameters θ are zero centered, and p(θ) and p(y|θ) are both Gaussian distributed, 
we can prove that MAP arrives with the same objective as using L2 as the cost function with added L2 regularization.

![](https://miro.medium.com/max/1400/1*YXrfEY5Tm1I6N71Xf8eTDw.jpeg)  

Conceptually, p(θ) can be viewed as a regularization factor. 
It can penalize a cost function if θ deviates from our prior belief. 

![](https://miro.medium.com/max/1400/1*huHAsc8B47cnKpimGSVtlQ.jpeg)    

To make a new prediction, we use the posterior p(θ | X, y) in our training as p(θ). Then we find the marginal probability p(y₀|x₀) by integrating over θ. This is Marginal inference. 
We compute the probability of a variable by summing everything else out.

## 2.3 Cost function vs MLE vs MAP
**Cost function is equivalent to (derived from) MLE and MAP (with regularization)**

### 2.3.1 Linear regression
![](.Neural_net_work_images/175201d6.png)
### 2.3.2 Classification - minimize cross entropy

