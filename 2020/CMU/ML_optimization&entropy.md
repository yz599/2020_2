This is my study notes of 
[CMU - Machine Learning 10-701](http://www.cs.cmu.edu/~tom/10701_sp11/lectures.shtml)


Lecture 1 Intro to ML and Decision Trees   
Lecture 2 Decision tree learning and Review of probability

## 1. Machine Learning as Function approximation

### 1.1 Function approximation 
![](.ML_images/f2be7722.png)

<font color='red'>Take decision tree as an example</font>


![](.ML_images/c5c9ec6b.png)

<font color='red'>We're actually looking for a **_boolean function_**</font>

![](.ML_images/174b79a8.png)

#### 1.1.1 Search and optimization - Free lunch therom

<font color='red'>***Learning is search/optimization problem over H***  
- Various objective functions
  - minimize training error
  - among hypotheses that minimize training error, 
- But inductive learning without some bias is futile

![](.ML_images/f8687996.png)
> There is no free lunch!
>Inductive Inference- generalizing beyond the training data is impossible **unless** we add more assumptions **(Priors asserts)**

><font color='red'>This is usually done by bayes' inference

#### 1.1.2 Bayes' Inference - Prior assumption

<font color='red'>Joint probability</font>  
![](.ML_images/72a180c1.png)  

<font color='red'>Conditional Probability  
![](.ML_images/3e540a87.png) 
![](.ML_images/77f6f684.png) 

<font color='red'>Marginal Probability</font>   
The marginal probability P(X) is computed by summing (or integrating) the joint probability over other variables.
![](https://miro.medium.com/max/1400/1*l_fRRvAVcm6ueQ8STOhxUA.jpeg)

In many ML problems, we build a **joint distribution model** for all the variables. Once it is modeled, we can inference the probability of a single or a subset of variables (p(x₁) or p(x₁, x₂, x₃)) by summing or integrating over the rest of the variables.  

![](https://miro.medium.com/max/1400/1*r02pso6WHFOa2UoFZfMbiw.jpeg)

<font color='red'>Bayes' Rule  
![](.ML_images/3ce444f9.png)
![](https://miro.medium.com/max/1400/1*a1q29H0SfIAfC7Ozub8XrA.jpeg)
![](.ML_images/c99396e9.png)    

<font color='green'>B is the features of Decision tree  

![](.ML_images/e8bf0714.png)


<font color='red'>What does all this have to do with function approximation?
![](.ML_images/ea0374d7.png)


##### Beta distribution


---
Independent Events -- Joint distribution
![](.ML_images/b9c21d1d.png)
![](.ML_images/71139447.png)

#### 1.1.3 Entropy
[Here is the reference](https://medium.com/@jonathan_hui/machine-learning-summary-fundamental-6562ff7448a)  
[Visualization](http://colah.github.io/posts/2015-09-Visual-Information/#fn4)  

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
 
The Shannon **information content** is the amount of information gain when **an event x occurs**. Mathematically, it is defined as:  

![](https://miro.medium.com/max/700/1*wwQYSnXwUvW07x_kUMgI-Q.jpeg)  

In computer science, the information content can also be viewed as the number of bits to encode the information most efficiently

X is called a random variable if it holds a value generated from a random process (a stochastic process), e.g. the face value in rolling dice or the total number of heads after flipping a coin 20 times.

**Entropy H** measures the expected information content of **a random variable**. To calculate the value, we sum up all information content with a weight equals to its occurrence frequency.  

![](https://miro.medium.com/max/700/1*ISBA6bFbft3RgSgk8hAFaw.jpeg)

##### <font color='red'>**Cross entropy H(P,Q)**  
Cross-entropy H(P, Q) measures the expected number of bits to encode X with distribution P using an encoding scheme targeted for distribution Q.

![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png)

In ML, we want our predictions Q to match the ground truth P. If they match, **the cross-entropy will be the minimum** and therefore, we often use it as our training objective.  

![](https://miro.medium.com/max/700/1*kUXKKpUU_b9Y0cb_Zj6gjg.jpeg)

The cross-entropy for our example is
![](https://miro.medium.com/max/700/1*emraDRFHPR7fXpo4U3N7jg.jpeg)  

As shown above, the cost function for many classification problems is simply
![](https://miro.medium.com/max/700/1*jZFXNjzolcoN-LqcUB0h_w.jpeg)

##### <font color='red'>**KL-divergence**  
KL-divergence measures the difference between two distributions P and Q.  
![](https://miro.medium.com/max/700/1*o-pPUakkB3-axXEviqsreg.jpeg)  

<font color='red'>Cross entropy -Entropy = KL Divergence

i.e., KL-Divergence measures the inefficiency of representing P with encoding scheme Q — the extra-bits to encode the information with the sub-optimal scheme. Therefore, KL-divergence is always greater or equal to zero

##### <font color='red'>**Conditional Entropy**

The conditional entropy H(Y|X) is the entropy of Y given X is known. If Y can be separated according to X, this is the weighted entropy of the separated groups and calculated as:

![](https://miro.medium.com/max/1400/1*Fkcmkzp1uoML3fujNf2gYA.jpeg)  

![](.ML_images/232c0e1f.png)

![](.ML_images/ea24b30f.png)

#### <font color='red'>**Information gain I(X,Y)- mutual information**
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

