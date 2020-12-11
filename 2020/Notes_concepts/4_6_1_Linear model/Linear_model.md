# 1. [Linear regression]()

## 1.1 Implement in python

#### 1.1.1 **EDA**- Used to exame correlation of features 
[Calculate pearsoneR](https://realpython.com/numpy-scipy-pandas-correlation-python/#correlation)

- [numpy](https://numpy.org/doc/stable/reference/routines.statistics.html)
- pandas
- spicy.stats.
- scatter_plot

### 1.1.2 Linear regression

- np.polyfit()
- sklearn

## 1.2 Understand linear regression
### 1.2.1 Statistical reference 

#### Assumption:
- Linearity: The relationship between X and the mean of Y is linear.
- Homoscedasticity: The variance of residual is the same for any value of X.
- **Independence/non-correlate:**    Observations are independent of each other.
- Normality: For any fixed value of X, Y is normally distributed.
#### OLS and MLE
#### [Coefficient of Determination - r-squared](https://online.stat.psu.edu/stat462/node/95/)
![](.Linear_model_images/6aa669f1.png)  

<font color='red'>**SSTO = SSR + SSE**</font>
- SSR is the "regression sum of squares" and quantifies how far the estimated sloped regression line, y^i, is from the horizontal "no relationship line," the sample mean or y-.
- SSE is the "error sum of squares" and quantifies how much the data points, yi, vary around the estimated regression line, y^i.
- SSTO is the "total sum of squares" and quantifies how much the data points, yi, vary around their mean, y-.

![](.Linear_model_images/feaf9718.png)  

In short, the "coefficient of determination" or "r-squared value," denoted r2, is the regression sum of squares divided by the total sum of squares. Alternatively, as demonstrated in this screencast below, since SSTO = SSR + SSE, 
the quantity r2 also equals one minus the ratio of the error sum of squares to the total sum of squares: 
####  (Pearson) Correlation Coefficient r
The correlation coefficient r is directly related to the coefficient of determination r2 in the obvious way.  
 
![](.Linear_model_images/f40951f4.png)

- Alternative formula for r  
![](.Linear_model_images/aa7b75c1.png)  
- r is a function of the estimated slope coefficient b1
![](.Linear_model_images/9e5e8bc4.png)  
The estimated slope b1 of the regression line and the correlation coefficient r always share the same sign
#### [Model evaluation and F-test](https://online.stat.psu.edu/stat462/node/107/)
#### [Correlation and cause-effect](http://www.mit.edu/~6.s085/notes/lecture3.pdf)
As an extremely crucial remark, correlation does not imply causation!  which is one of the most common sources of error in interpreting
statistics.
![](.Linear_model_images/edc88422.png)
![](.Linear_model_images/ff2bee0b.png)
### 1.2.2  Machine learning  (Optimization)    
  
|   |Fitting Method   |  
|---|---|
|  Stat| MLE - OLD |  
|  ML |  Loss function|  

 
![](.Neural_net_work_images/175201d6.png)

Solutions:
- Gradient descent (Optimization)
  ![](.Neural_net_work_images/270f5bf5.png)
   - Batch GD
   - SGD
   - Mini-batch GD
- Close solution (linear algebra)
  ![picture 1](../../../images/a4576f84b140f840baa39243f911e2616379bf76f21fb9d4fe88ed9e3ae5dd18.jpg)  ![picture 2](../../../images/960da22eee12f7570431c03f2812e3aae3ac637fb72d4518ba7399a1baa40368.png) 

## 1.3 Overfitting problem
[Implement](https://harvard-iacs.github.io/2018-CS109A/labs/lab-5/student/)

- Cross validation
- Regularization



### 1.3.1 L1 and L2 Regularization


- **Loss function with no regularisation**:![picture 17](../../../images/afefca53eb921199eee58dfed0a8299da8efc8c8d7b0c2c682e507592ce2da7f.png)  

>This is a Ellipse
- **Loss function with L1 regularisation**：![- **Loss function with L1 regularisation**： 1](../../../images/02dee06293906c0f5d119654db23ea7420a560a7d52bbe8169cd303a5fee96a8.png)  
- **Loss function with L2 regularisation**:![picture 20](../../../images/e5c352dffa40016bd37d64ec88a1a9dfff58cd8cdbf8992563f686644fcbe4da.png)  
   
   >Demonstrated by a two dim cases,[x1,x2],  
   ![picture 23](../../../images/fe760d8787fa3530799a10a9274d9ac31c708199302f3f7ceb2cb771beb218cf.png)  
   ![picture 24](../../../images/e70e24de974a697bd03f2d53371e41417f2404e06f02f4d2d3009255c5078042.png)  


### 1.3.2 L1/L2 regularization and PCA


# 2. Locally Weighted Regression


- How many neibors to allow to influence a test point?
- A way to give larger weights to closer points. **Gaussian similarity metric**
![picture 45](../../../images/9fd0bd980ad064ebe0feb8c25f3c21bbc6d63b806c506094f5fb981d15ddc1d9.png)  

- **Loss function**: find theta minimize the locally weighted sum of squared residuals to the **sample x**
![picture 46](../../../images/7243886e758ac1ff8fb8ebc2414cf40c367f9a2046196ca70bdcc3bf80026549.png)  

- Rewrite the weights into diagonal matrix   
  ![picture 47](../../../images/3ab4f72e779b756c0942b8a8958d0826334d29177f70cbd7942799bfc8775c8d.png)  

- Taking the **derivative**   
  ![picture 48](../../../images/1832ca40ecaec2122f8670316a495ece53704f21a6123aa7c2aafc6c0a351a39.png)  



