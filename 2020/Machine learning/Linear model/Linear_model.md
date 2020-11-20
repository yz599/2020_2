## 1. [Linear regression]()

### 1.1 Implement in python

#### 1.1.1 **EDA**- Used to exame correlation of features 
[Calculate pearsoneR](https://realpython.com/numpy-scipy-pandas-correlation-python/#correlation)

- [numpy](https://numpy.org/doc/stable/reference/routines.statistics.html)
- pandas
- spicy.stats.
- scatter_plot

#### 1.1.2 Linear regression

- np.polyfit()
- sklearn

### 1.2 Understand linear regression
- Statistical reference (Pearson R)
- Machine learning  (Optimization)    
  
|   |   |   |   |   |
|---|---|---|---|---|
|  Stat| MLE  |   |   |   |
|  ML | OLD (loss function)  |   |   |   |
|   |   |   |   |   |

    OLD = MLE
![](.Neural_net_work_images/175201d6.png)

Solutions:
- Gradient descent (Optimization)
  ![](.Neural_net_work_images/270f5bf5.png)
   - Batch GD
   - SGD
   - Mini-batch GD
- Close solution (linear algebra)
  ![picture 1](../../images/a4576f84b140f840baa39243f911e2616379bf76f21fb9d4fe88ed9e3ae5dd18.jpg)  ![picture 2](../../images/960da22eee12f7570431c03f2812e3aae3ac637fb72d4518ba7399a1baa40368.png) 

### 1.3 Overfitting problem
[Implement](https://harvard-iacs.github.io/2018-CS109A/labs/lab-5/student/)

- Cross validation
- Regularization
#### 1.3.1 L1 and L2 Regularization

- **Loss function with no regularisation**:![picture 17](../../images/afefca53eb921199eee58dfed0a8299da8efc8c8d7b0c2c682e507592ce2da7f.png)  

>This is a Ellipse
- **Loss function with L1 regularisation**：![- **Loss function with L1 regularisation**： 1](../../images/02dee06293906c0f5d119654db23ea7420a560a7d52bbe8169cd303a5fee96a8.png)  
- **Loss function with L2 regularisation**:![picture 20](../../images/e5c352dffa40016bd37d64ec88a1a9dfff58cd8cdbf8992563f686644fcbe4da.png)  
   
   >Demonstrated by a two dim cases,[x1,x2],  
   ![picture 23](../../images/fe760d8787fa3530799a10a9274d9ac31c708199302f3f7ceb2cb771beb218cf.png)  
   ![picture 24](../../images/e70e24de974a697bd03f2d53371e41417f2404e06f02f4d2d3009255c5078042.png)  


#### 1.3.2 L1/L2 regularization and PCA



   


