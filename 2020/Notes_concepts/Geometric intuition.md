This notes discussed the NN from three different perspectives

- **Feature representation (Linear - non-linear)**
- **Geometric intuition**
- **Statistical learning**


![](.Neural_net_work_images/fa25f84b.png)

## 1. Linear regression
![](.Neural_net_work_images/606b2866.png)
![](.Neural_net_work_images/175201d6.png)
![](.Neural_net_work_images/270f5bf5.png)
![](.Neural_net_work_images/c75556be.png)

![picture 1](../../images/a4576f84b140f840baa39243f911e2616379bf76f21fb9d4fe88ed9e3ae5dd18.jpg)  

![picture 2](../../images/960da22eee12f7570431c03f2812e3aae3ac637fb72d4518ba7399a1baa40368.png)  

## 2. Logistic regression

### Classify the data by distance to the line

![](.Neural_net_work_images/498b7559.png)![](.Neural_net_work_images/f3147230.png)![](.Neural_net_work_images/e7c01cfb.png)

![](.Neural_net_work_images/8c45874f.png)![](.Neural_net_work_images/58141733.png)
![](.Neural_net_work_images/5eba48ea.png)


1.	The input is projected onto the weight vector and scaled/shifted along this direction. This is a linear operation that reduces the input to a single value, which is then passed through the (possibly nonlinear) activation function.

2.	Consider a hyperplane in input space that's orthogonal to the weight vector. All inputs falling within this hyperplane are mapped to the same output value (the decision boundary plotted below is an example of such a hyperplane). 

3.	The function is a surface bent into a sigmoidal shape along the direction of the weight vector. Changing the network parameters can rotate the direction of the sigmoidal surface, and stretch or shift it. But, the fundamental sigmoidal shape will always remain.

### 2.1 Prior probability and the line
![](.Neural_net_work_images/5214ece0.png)![](.Neural_net_work_images/70a922a4.png)

## 3. Neural network
### 3.1 [Linearity assumption:](http://d2l.ai/chapter_multilayer-perceptrons/mlp.html)


Linearity implies: that for whatever target value we are trying to predict, increasing the value of each of our inputs should either drive the value of the output up or drive it down, irrespective of the value of the other inputs.

    Example: Say we are trying to predict whether an individual will or will not repay a loan. We might reasonably imagine that all else being equal, an applicant with a higher income would be more likely to repay than one with a lower income. In these cases, linear models might perform well, and they might even be hard to beat.

    But what about classifying images in FashionMNIST? 
    
    Should increasing the intensity of the pixel at location (13, 17) always increase the likelihood that the image depicts a pocketbook? That seems ridiculous because we all know that you cannot make sense out of an image without accounting for the interactions among pixels.

If we use a linear model, we’d basically be saying that for each pixel, increasing its value (making it more white) 
must always increase the probability that the image depicts a dog or 
must always increase the probability that the image depicts a cat. 
We would be making the absurd assumption that the only requirement for 
differentiating cats vs. dogs is to assess how bright they are. 

That approach is doomed to fail in a work that contains both black dogs and black cats, 
and both white dogs and white cats. Thus we need models capable of discovering patterns 
that might be characterized by interactions among the many features

### 3.2 Feature representation - non-linear transform through activation function
![](.Neural_net_work_images/bb8fd916.png)  
![](.Neural_net_work_images/b123a8c2.png)
![](.Neural_net_work_images/0e93135d.png)

### 3.3 Geometric
![](.Neural_net_work_images/f3aa1625.png)
![](.Neural_net_work_images/058b5781.png)
![](.Neural_net_work_images/42fc6263.png)

![](.Neural_net_work_images/30782bae.png)