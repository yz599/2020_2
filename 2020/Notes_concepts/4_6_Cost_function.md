# Cost function
|   | Information_Gain/KL  |  Cross entropy/Condi entropy - share*entropy  ||
|---|---|---|---|
| Decision tree - **generative model P(xy)** |minimize IG/KL= H(Y)-H(yIX) |![](https://miro.medium.com/max/1400/1*Fkcmkzp1uoML3fujNf2gYA.jpeg) - datasets -- condi_occurance*entropy |**Evaluate purity of the subset - learn from _features_**|
| Logistic - **discirmitive model P(yIX)**|![](.ML_images/ad94a2c2.png) |![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png) - a single case -- true occurance(label)*log(Pred)   |**Derived form sequence of bernulli' trail/higher than P(Y)**  |


The cost function of logistic regression and decision tree are talking about the same thing..
- Decision tree (gener know all date): true condi_occurance (frequency) *entropy = **weighted entropy**
- Logistic regression (Discrim know one single case): sum of **weighted (1 or 0 true label) entropy** of single case

**Generative classifiers**
1. Assume some functional form for <font color='red'>P(Y), P(X|Y)</font>
2. Estimate parameters of P(X|Y), P(Y) directly from training data
3. Use Bayes rule to calculate P(Y |X)

**Discriminative Classifiers**
1. Assume some functional form for P(Y|X)
2. Estimate parameters of P(Y|X) directly from training data

- **Generative classifiers**  
  - Naïve Bayes  
  - Bayesian networks
  - Markov random fields
  - Hidden Markov Models (HMM)
- **Discriminative Classifiers**
  - Logistic regression
  - Scalar Vector Machine
  - Traditional neural networks
  - Nearest neighbour
  - Conditional Random Fields (CRF)s

||||
|---|---|---|
|Naive Bayesian|Learn from joint distribution/Ciid|![](.4_6_Cost_function_images/999c179e.png)||
|Original Y   |P(Y)=count(Y)/total   |   |

# 2. Implement
## 2.1 Decision tree
Information gain..
![](.4_6_Cost_function_images/6c8685e1.png)
![](.4_6_Cost_function_images/3c32e4a2.png)

## 2.2 Naive Bayesian
Joint distribution
![](.4_6_Cost_function_images/7e021a3e.png)

## 2.3 Logistic regression
![](.4_6_Cost_function_images/7ec587ed.png)


