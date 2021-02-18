# Cost function

![](.4_6_Cost_function_images/9371e04f.png)
![](.4_6_Cost_function_images/a05e81fe.png)

Some additional notes on loss functions:
1. As hinge-loss decreases, so does training error.
2. As z→−∞, the log-loss and the hinge loss become increasingly parallel.
3. The exponential loss and the hinge loss are both upper bounds of the zero-one loss. (For the exponential loss, this is an important aspect in Adaboost, which we will cover later.)
4. Zero-one loss is zero when the prediction is correct, and one when incorrect.
---
|Model   | Information_Gain/KL  |  Cross entropy/Condi entropy - share*entropy  ||
|---|---|---|---|
|Decision tree|minimize IG/KL= H(Y)-H(yIX) |![](.4_6_Cost_function_images/6e085b87.png) |**Evaluate purity of the subset - learn from _features_**|
|Logistic - **discr P(yIX)**|![](.ML_images/ad94a2c2.png) |![](https://miro.medium.com/max/700/1*J7Q93nEPvsgo0K5fhJMPZQ.png) - a single case -- true occurrence(label)*log(Pred)   |**Derived form sequence of bernoulli' trail/higher than P(Y)**  |
|Naive Bayesian - **gener P(xy)**||||

The cost function of logistic regression and decision tree are talking about the same thing..
- Decision tree (gener know all date): true condi_occurance (frequency) *entropy = **weighted entropy**
- Logistic regression (Discr know one single case): sum of **weighted (1 or 0 true label) entropy** of single case

**Generative Classifiers**
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
- Information gain...
![](.4_6_Cost_function_images/6c8685e1.png)
![](.4_6_Cost_function_images/3c32e4a2.png)

- Entropy  
![](.4_6_Cost_function_images/356dd281.png)  
![](.4_6_Cost_function_images/c903281d.png)

- Information Gain  
![](.4_6_Cost_function_images/2803fcce.png)  
![](.4_6_Cost_function_images/20dca39f.png)

## 2.2 Naive Bayesian
- Joint distribution  
![](.4_6_Cost_function_images/7e021a3e.png)

## 2.3 Logistic regression
![](.4_6_Cost_function_images/7ec587ed.png)


