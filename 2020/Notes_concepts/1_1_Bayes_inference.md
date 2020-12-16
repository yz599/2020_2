# 1. Bayes' Inference - Prior assumption

## 1.1 Three probabilities
### <font color='red'>Joint probability</font>  
![](.ML_images/72a180c1.png)  

### <font color='red'>Conditional Probability  
![](.ML_images/3e540a87.png) 
![](.ML_images/77f6f684.png) 

### <font color='red'>Marginal Probability</font>   
The marginal probability P(X) is computed by summing (or integrating) the joint probability over other variables.
![](https://miro.medium.com/max/1400/1*l_fRRvAVcm6ueQ8STOhxUA.jpeg)

In many ML problems, we build a **joint distribution model** for all the variables. Once it is modeled, we can inference the probability of a single or a subset of variables (p(x₁) or p(x₁, x₂, x₃)) by summing or integrating over the rest of the variables.  

![](https://miro.medium.com/max/1400/1*r02pso6WHFOa2UoFZfMbiw.jpeg)

## <font color='red'>1.2 Bayes' Rule  
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

 ## 2. Inference with the Joint distribution
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

## 3. Bayesian inference
[Reference](https://github.com/yz599/2020_2/blob/master/2020/CMU/Bayesian%20Inference%20example.ipynb)
![](https://miro.medium.com/max/1400/1*Y5NJF_SyPD3ogYfWDSz1GQ.png)
![](.ML_probability_images/d6636b73.png)


|   |Example   |  |
|---|---|---|
| P(θ): | say 400 out 2000 claps --- your guess based on one observation --- Beta distribution  ![](.ML_probability_images/b3db0a8a.png)  |The clapping probability for the prior was 20%. 400/2000|
| P(XIθ)| ![](.ML_probability_images/986dbfb1.png)  |
| P(θIX)| posterior = likelihood * prior  |Now, the posterior has its peak around 0.25%.|
|X|![](.ML_probability_images/5e89e5ea.png)|The clapping probability for the data was given as 30%.|

![](.ML_probability_images/790fe553.png)
- Because we incorporated more information through sampling, 
the range of possible parameters is now narrower.   
- The more data you gather, the graph of the posterior will look more like that of the **likelihood and less like that of the prior**.
- In other words, as you get more data, the **original prior distribution matters less**. 

# 4. [Conditional Independence ](https://towardsdatascience.com/conditional-independence-the-backbone-of-bayesian-networks-85710f1b35b)