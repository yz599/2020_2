# Navie Bayesian classification
![](.1_Navive_Bayesian_classification_images/45eaed99.png)
![](.1_Navive_Bayesian_classification_images/3da41dfb.png)  
![](.1_Navive_Bayesian_classification_images/f0404155.png)
# 1. [Bayes inference - P(f=x|y=i)-->P(y=i|x)](https://github.com/yz599/2020_2/blob/master/2020/Notes_concepts/1_1_Bayes_inference.md)

![](.1_Navive_Bayesian_classification_images/aa12d115.png)


|   |meaning   |types   |roles   |   |
|---|---|---|---|---|
|P(y=i)  |  Prior |**condition**(marginal distribution)| randomly choose one, the P of y=i    | **a fact** of the datasets(sample)- percentage of **samples** that have their class y=i|
|P(x)|  Evidence/features|marginal distribution  |percentage of **samples** with feature Xn **with all y values** |**a fact** of the datasets(sample)  |
|P(y=iIx):|Posterior | Conditional distribution  | to be learnt  |**from Below**   |
|**P(f=xIy=i)**|Likelihood   |Conditional distribution   |could be learnt from joint distribution of Xn|![](.1_Navive_Bayesian_classification_images/46759a72.png)  |
|H(Y)-H(YIX)   |Mutual information |cost function |difference between **prior P(y=1)** and **posterior P(YIX)**  |what could be learn about Y with known X   |

**<font color='red'>P(f=x|y=i) is to be learnt from the samples - just like MLE**</font>
![](.1_Navive_Bayesian_classification_images/f685ddae.png)
![](.1_Navive_Bayesian_classification_images/dbdb4403.png)
---
- **Prior P(y=i):** _marginal distribution_  
The prior P(y=i) is just the percentage of samples that have their class y=i  

- **P(x):** _marginal distribution_   
  > This is **a fact** of the datasets(sample) just like P(y). **So it couldn't be learnt**  

  The marginal probability P(X) is computed by summing (or integrating) the joint probability over other variables.
![](https://miro.medium.com/max/1400/1*l_fRRvAVcm6ueQ8STOhxUA.jpeg)
- **Posterior P(y=i|x):** _Conditional distribution_   
 What could we learn about the P of y=i, if we know x features.
  >**X are vector of the features of the decision tree**
  > <font color='red'>The features give more information about what y is. **mutual information**</font>

- **Mutual information H(Y)-H(Y|X):** what could be learn about Y with known X
![picture 6](../../../images/6dec0f6bc2b928592139cbc8322e8dd750165502e8487c2213c99552228a0529.png) 

- **P(f=x|y=i):** _Conditional distribution_  

  - ![](../.ML_probability_images/aa828c33.png)  
  - learn from **joint distribution**  
  ![](.1_Navive_Bayesian_classification_images/dbdb4403.png)
  - learn from **conditional independent assumption of features** Xn - navie bayesian  
     **P(f=x|y=i)=**![](.1_Navive_Bayesian_classification_images/067e8a39.png)
     
    ![](../.ML_probability_images/aa828c33.png)  ![](../.ML_probability_images/39d89963.png)
---
Illustration of three distributions using Gaussian:

![](../.1_1_Bayes_inference_images/3e33fe87.png)

# 2. Navie Bayesian - conditional independent assumption of features in vector X
![](.1_Navive_Bayesian_classification_images/f685ddae.png)
![](.1_Navive_Bayesian_classification_images/a9cae11f.png)

- a **special case of decision tree** with features that are **conditionally independent**
> more likely, the features are dependent, like rain and lower temperature
>![](.1_Navive_Bayesian_classification_images/02f6b36e.png)
- works for categorical and Continuous values
- When this doesn't hold true,search for other models by Decision tree

## 2.1 [Example](https://www.geeksforgeeks.org/naive-bayes-classifiers/)  

We need to find P(xi | yj) for each xi in X and yj in y.

|OUTLOOK|	TEMPERATURE|	HUMIDITY|	WINDY|	PLAY GOLF|
|---|---|---|---|---|
|0|	Rainy	|Hot|	High|	False|	No|
|1|	Rainy	|Hot|	High|	True|	No|
|2	|Overcast|	Hot|	High|	False	|Yes|
|3|	Sunny	|Mild|	High|	False	|Yes|
|4	|Sunny|	Cool|	Normal|	False	|Yes|
|5	|Sunny|	Cool|	Normal|	True	|No|
|6	|Overcast|	Cool|	Normal|	True|	Yes|
|7	|Rainy|	Mild|	High|	False	|No|
|8	|Rainy	|Cool|	Normal|	False|	Yes|
|9	|Sunny|	Mild|	Normal|	False	|Yes|
|10|	Rainy|	Mild|	Normal|	True|	Yes|
|11|	Overcast|	Mild|	High	|True|	Yes|
|12|	Overcast|	Hot|	Normal|	False	|Yes|
|13|Sunny	|Mild|	High	|True|	No|



We assume that:
- no pair of features are dependent. 
- each feature is given the same weight(or importance).   
  >For example, knowing only temperature and humidity alone can’t predict the outcome accuratey. None of the attributes is irrelevant and assumed to be contributing equally to the outcome.

![picture 15](../../../images/35908e21bb55dbb585e90b97cd49691dc0b4a62e807c7c516fefd45f6666f6f5.png)  

![picture 16](../../../images/64f17574ac53fae49e5e289bcd1c012710a6cc3be44c3be3e6fdbda0c69e6a57.png)  

><font color='red'>Now, as the denominator remains constant for a given input, we can remove that term:</font>

![picture 17](../../../images/e70bbca79a6e5b1ad949062dca99b976a7c5b82a1653bca8eb6b277ca360ca4a.png)  

![picture 18](../../../images/aa009887a834b3adfcae68ea62f08c5f069eacdaf9e972a4a84435d0cb6dde08.png)  


today = (Sunny, Hot, Normal, False)

![picture 19](../../../images/f1623a052334f7ab63348df0cbcbc919a3cdce082ea75b6f526636c3e76d18cd.png)  

![picture 20](../../../images/145ebdeb971fb00540c52c47eb28242423f8d7da672802117be519b49977555f.png)  

Since, P(today) is common in both probabilities, we can ignore P(today) and find proportional probabilities as:

![picture 21](../../../images/7b13846c10b7d2639e711ddd204c8b012ff6364952dec14ba56fc3bd32944a4f.png)  

![picture 22](../../../images/c4b451005985854b889862abe77e8ae62de875292e62de5be68a116c0e98fd36.png)  

![picture 23](../../../images/e85d45ce101418f4af4d58096751c1b40f873915ec175fd9ef8859be2a6d723c.png)  

![picture 24](../../../images/34f72f43e03908a676407f011b1286d834937ceb83893cb00b8dd262e63655c5.png)  

![picture 25](../../../images/6e014620823789722c5f10d8dfd588c410a6b9ae99755f45982e503b23143bef.png)  

## 2.2 Continous data

In case of continuous data, we need to make some assumptions regarding the distribution of values of each feature.

Gaussian Naive Bayes classifier: ontinuous values associated with each feature are assumed to be distributed according to a Gaussian distribution.
![picture 26](../../../images/3be308c5f64f2734c864f9412d4468957e5d74ab4db5016ec33e99651fb41db8.png)  


# 3. [Statistical learning - learning from joint distribution](https://github.com/yz599/2020_2/blob/master/2020/CMU/ML_probability.md)
Machine learning is looking for a conditional probability P(Y|X) by finding joint distribution
![](.ML_probability_images/aa828c33.png)
![](.ML_probability_images/39d89963.png)

<font color='red'>Example:</font>  

![](../.ML_probability_images/f8fbc047.png)  

_**The 4th column shows share of the examples and hence the table is actually a dataset..**_

> <font color='red'>The joint distribution allows us to compute the joint probability/marginal prob and hence conditional prob P(Y|X)</font> 

![](../.ML_probability_images/0197a561.png)
![](../.ML_probability_images/d18220df.png)
![](../.ML_probability_images/5e005ff3.png)


1.	Suppose we want to learn the function f: <G, H> —>W

2.	Equivalently, P(W | G, H)   Solution: learn joint distribution from data, calculate P(W | G, H)   

e.g., P(W=rich | G = female, H = 40.5)= ![](../.ML_probability_images/8da29a62.png)

# 4. Gaussion Naive Bayesian - [a linear classifier](https://www.cs.cornell.edu/courses/cs4780/2018fa/lectures/lecturenote05.html)

![](.1_Navive_Bayesian_classification_images/9102ae79.png)
![](.1_Navive_Bayesian_classification_images/08365401.png)
