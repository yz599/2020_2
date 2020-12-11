# 1.Entropy
[Here is the reference](https://medium.com/@jonathan_hui/machine-learning-summary-fundamental-6562ff7448a)  
[Visualization](http://colah.github.io/posts/2015-09-Visual-Information/#fn4)  

![](.1_2_Entropy_map_mle_images/96a200db.png)

|<font color='red'> Distribution - concept  |Formula   |
|---|---|
|Joint entropy |![picture 1](../../images/c54531c325c3d824d2098576b49c76d680a1b71b0a9ef6538fd5dd2b5591346c.png)|
|Marginal distribution|P(x)*P(y)|
|Mutual information |![picture 5](../../images/5d9bdb0b603c84e7e4a23d780ac9a84943572f1fc13e5595be24e0bf18006d23.png)|

|<font color='red'> Classification  |Formula   |
|---|---|
| Information of an event   |  I(x) = -log(p(x)) |
| Entropy of a random variable   |![](https://miro.medium.com/max/700/1*ISBA6bFbft3RgSgk8hAFaw.jpeg)|
|Cross entropy H(P,Q) |![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png)  |
|KL Divergence |![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg) ![](.ML_images/ad94a2c2.png)|

![](https://miro.medium.com/max/1400/1*WMMz5lEbZEowSWoPJ0eR6w.jpeg)
![](https://miro.medium.com/max/1400/1*CICgG0p9CUKKgB__eXmj7A.jpeg) 

|<font color='red'> Decision tree  |Formula   |
|---|---|
|Conditional entropy|![](https://miro.medium.com/max/1400/1*Fkcmkzp1uoML3fujNf2gYA.jpeg)|
|Information gain |![](https://miro.medium.com/max/1400/1*zc-hk1AKkKOwxvIS9TopZw.jpeg)|
|KL_distance |<font color='red'>Equation is different from above |

<font color='red'>Mutual information=Information gain=KL Divergence Under **Decision tree**</font>
![](.ML_images/faa582f0.png)

![picture 6](../../images/6dec0f6bc2b928592139cbc8322e8dd750165502e8487c2213c99552228a0529.png)  

---
## 1.1 Information
The Shannon **information content** is the amount of information gain when **an event x occurs**. Mathematically, it is defined as:  

![](https://miro.medium.com/max/700/1*wwQYSnXwUvW07x_kUMgI-Q.jpeg)  

In computer science, the information content can also be viewed as the number of bits to encode the information most efficiently

X is called a random variable if it holds a value generated from a random process (a stochastic process), e.g. the face value in rolling dice or the total number of heads after flipping a coin 20 times.

## 1.2 [Entropy - one rv](https://homes.cs.washington.edu/~ewein//blog/2020/07/30/joint-entropy/)
**Entropy H** measures the expected information content of **a random variable**. To calculate the value, we sum up all information content with a weight equals to its occurrence frequency.  

![](https://miro.medium.com/max/700/1*ISBA6bFbft3RgSgk8hAFaw.jpeg)

## 1.3 [Two rvs](https://homes.cs.washington.edu/~ewein//blog/2020/07/30/joint-entropy/)

- **Joint entropy**: However, we often want to understand not just the uncertainty in a single event XX, but the **joint uncertainty of two events X and Y**
- **Conditional entropy**: knowing the outcome of one event YY changes the amount of uncertainty we have about XX. 
   >Going back to our weather example, suppose that we’re back in Seattle during the winter and everyone knows the weather will be overcast all the time - how does this affect the amount of information/surprise contained in our temperature report
- **Marginal distribution** 
- **Independent rvs** 
- **Mutual information**:Sometimes, instead of looking at the new uncertainty H(Y|X)H(Y∣X), we instead want to understand the change in uncertainty caused by knowing XX. 

| Prob of 2 rvs  |   |   |   
|---|---|---|
|Joint entropy  | P(x,y) | ![picture 1](../../images/c54531c325c3d824d2098576b49c76d680a1b71b0a9ef6538fd5dd2b5591346c.png)  |   
|Conditional Entropy   |P(xIy)  | ![picture 3](../../images/1d6bf397846ba3a5387d59fde0ec244370f27c9aa3f5f7bf56f3cc28b3cf4cf2.png)| 
|Marginal dist  |P(x),P(y)    |  |   
|Independent rvs   | P(x,y)=P(x)*P(y)  |   | 
| Chain rule  |P(x,y) = p(xIy)*p(y)   |![picture 4](../../images/488b0dbda4c4e321b116ee1c01bee293104e7738f0d660128464a9f8ede2d6de.png)   |  
|Mutual information|  |![picture 5](../../images/5d9bdb0b603c84e7e4a23d780ac9a84943572f1fc13e5595be24e0bf18006d23.png)|



### <font color='red'>**1.3.1 Joint entropy**</font>

### <font color='red'>**1.3.2 Conditional Entropy**</font>

The conditional entropy H(Y|X) is the entropy of Y given X is known. If Y can be separated according to X, this is the weighted entropy of the separated groups and calculated as:

![](https://miro.medium.com/max/1400/1*Fkcmkzp1uoML3fujNf2gYA.jpeg)  

![](.ML_images/232c0e1f.png)

![](.ML_images/ea24b30f.png)
## <font color='red'>**1.4 Information gain I(X,Y)- mutual information-KL distance(three ways to understand)**</font>

|   |   |   |   |   |
|---|---|---|---|---|
| Two rv  | ![picture 5](../../images/5d9bdb0b603c84e7e4a23d780ac9a84943572f1fc13e5595be24e0bf18006d23.png)  | Concept  | Mutual information  |   |
| Learned Y class dist. vs real Y  |![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg)   | Classification learning  | Cross entropy  |KL-distance   |
|Known Feature Y vs class X  | ![picture 6](../../images/6dec0f6bc2b928592139cbc8322e8dd750165502e8487c2213c99552228a0529.png)   |Decision tree   | Information gain  |   |
#### <font color='red'>Joint distribution P(x,y) vs independent P(x)*P(y) (_Conceptually_)</font>
>How different the **joint distribution of X and Y** is from what it would be if they were **independent** (and the joint was simply the product of marginals). 

![picture 5](../../images/5d9bdb0b603c84e7e4a23d780ac9a84943572f1fc13e5595be24e0bf18006d23.png)

- amount of information X and Y provide about each other then would be to compare the ratio p(x,y)/p(x)p(y)
- <font color='red'>**in other words, how far the true joint distribution is from what independence would be.**</font>
- If X and Y are independent (i.e., p(x,y) = p(x)p(y)), then intuitively our variables are contain no information about each other. 
- On the other hand, for non-independent XX and YY, knowing the value of one variable should provide some reduction in uncertainty of the other variable. 
  
>mutual information is precisely the reduction of uncertainty of XX due to the knowledge of YY.

![](.ML_images/a12c1007.png) 

---
#### <font color='red'>Distance between two distribution (Classification)</font>
>(Learned Q and P--Cross entropy-entropy) 
>This is different from definition 3, since it's the comparison between Learned dist of Y and real Y in classification

![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg) ![](.ML_images/ad94a2c2.png)

----
#### <font color='red'>Information obtained on the random variable X when Y is observed. (Classification_Y is features of DT)</font>
- I(X;Y) as the reduction in uncertainty of XX given YY.
- **measure how much information the variables contain about each other.**
- **Mutual information and entropy**
![picture 6](../../images/6dec0f6bc2b928592139cbc8322e8dd750165502e8487c2213c99552228a0529.png) 
>**A could be seen as the features of the decision tree**

## 1.5 Classification 
### 1.5.1 Cross entropy H(P,Q)
Cross-entropy H(P, Q) measures the expected number of bits to encode X with distribution P using an encoding scheme targeted for distribution Q.

![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png)

In ML, we want our predictions Q to match the ground truth P. If they match, **the cross-entropy will be the minimum** and therefore, we often use it as our training objective.  

![](https://miro.medium.com/max/700/1*kUXKKpUU_b9Y0cb_Zj6gjg.jpeg)

The cross-entropy for our example is
![](https://miro.medium.com/max/700/1*emraDRFHPR7fXpo4U3N7jg.jpeg)  

As shown above, the cost function for many classification problems is simply
![](https://miro.medium.com/max/700/1*jZFXNjzolcoN-LqcUB0h_w.jpeg)

### 1.5.2 <font color='red'>KL-divergence </font>
KL-divergence measures the difference between two distributions P and Q.  
![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg)  

<font color='red'>Cross entropy -Entropy = KL Divergence</font>

i.e., KL-Divergence measures the inefficiency of representing P with encoding scheme Q — the extra-bits to encode the information with the sub-optimal scheme. Therefore, KL-divergence is always greater or equal to zero
<font color="red"> Use KL-divergence for mutual information gain </font>
## 1.6 Decision tree
### 1.6.1 Information gain - mutual information 

![](.ML_images/9fe260b2.png)

Information Gain is the expected reduction in entropy of target variable Y for data sample S, due to sorting on variable A
  
![](.ML_images/2a322803.png)

Intuitively, mutual information measures how much information do we gain by knowing Y? 
- If knowing Y gives us all the information about X, the conditional entropy H(X|Y) is zero because there is no more information we needed on X. The mutual information I becomes H(X) (or H(Y)).For example, if we know the label (Y) of an object, we gain a lot of information about its raw image (X). 
We should not mistake its picture with other objects. Therefore the information gain I(X;Y) is high. 

Let’s visualize this with sets. The mutual information is its overlap.
![](https://miro.medium.com/max/1400/1*ORqXN86SlaUSfjNvob-xSg.jpeg)

### 1.6.2 <font color='red'>KL Divergence Under **Decision tree**</font>
![](.ML_images/faa582f0.png)

![picture 6](../../images/6dec0f6bc2b928592139cbc8322e8dd750165502e8487c2213c99552228a0529.png)  


# 2. Cost function - MLE/MAP
<font color='red'>**Cost function_ cross entropy (KL-divergence) _ MAP _MLE**</font>
- The core of Bayesian Inference is to combine two different distributions (likelihood and prior) into one “smarter” distribution (posterior). 
- Posterior is “smarter” in the sense that the classic maximum likelihood estimation (MLE) doesn’t take into account a prior. Once we calculate the posterior, we use it to find the “best” parameters and the “best” is in terms of maximizing the posterior probability, given the data. 
- This process is called Maximum A Posteriori (MAP). The optimization used in MAP is the same as the one used in typical machine learning, such as gradient descent or Newton’s method, etc.

## 2.1 What's MLE and MAP 
[Reference](https://towardsdatascience.com/bayesian-inference-intuition-and-example-148fd8fb95d6)  
[Reference1](https://wiseodd.github.io/techblog/2017/01/01/mle-vs-map/)  
[Reference2](https://medium.com/@jonathan_hui/machine-learning-summary-fundamental-6562ff7448a)
![](https://miro.medium.com/max/1400/1*e4YsqAyFBEa_MuXkC3rmXw.jpeg)


### 2.1.1 MLE  
<font color='red'>likelihood function P(X|θ)</font> 
![](.ML_probability_images/38107e3b.png)
![](.ML_probability_images/ee1c6dc2.png)

### 2.1.2 MAP   
<font color='red'>it works on a posterior distribution, not only the likelihood.</font>  
![](.ML_probability_images/b1863c0c.png)

- Comparing both MLE and MAP equation, the only thing differs is the inclusion of prior P(θ) in MAP, otherwise they are identical.
- What it means is that, the likelihood is now **weighted with some weight coming from the prior**.

## 2.2 MAP vs MLE
### <font color='red'>2.2.1 Assume prior P(θ) is a **uniform distribution** and MAP=MLE</font>  

![](.ML_probability_images/1659e506.png)  

if we use the simplest prior in MAP estimation, like a uniform prior, 
- we assign equal weights on all possible values of θ. 
- The implication is that the likelihood equivalently weighted by some constants. 
  - Being constant, we could be ignored from our MAP equation, as it will not contribute to the maximization.    

### <font color='red'>2.2.2 Prior= a **Gaussian**,MAP = L2 regularization of MLE</font>
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
### **Cost function is equivalent to (derived from) MLE and MAP (with regularization)**
### 2.3.1 Linear regression
![](.Neural_net_work_images/175201d6.png)
### 2.3.2 Classification - minimize cross entropy  

![](.1_2_Entropy_map_mle_images/2bee6bd4.png)

![](.1_2_Entropy_map_mle_images/01bd2746.png)

![picture 4](../../images/459ded598b7f5779a9866eb3f01606e9b79756e2a2a4c3dd6f159e460c574b33.png)  
