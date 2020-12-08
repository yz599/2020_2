## 1.2 Gradient descent
### 1.2.1 [Optimization](https://ruder.io/optimizing-gradient-descent/)
- **Target**: find **theta** to minimize value of cost function   
- **Why**: Minimize loss function
![picture 49](../../images/de86d5d51416a6154ae8bc27e2e5a7be8067be69c7583b3bd8cdb2375576ed7d.png)  
### 1.2.2 How
- **How**: move **theta** in a specific direction [gradient] to efficiently minimize loss function **from initial position**  

  - **loss function** - minimize
  - **gradient** of loss function
    - training data
    - ethta
    ![](.ML_concepts_images/e693ea8e.png)
  - **learning rate** speed/(-)direction
  - **Initializing ethta** High position
  - **Relationship between each iteration**  站在上一个点 求导和往下走
  <font color='red'>_**ethta2= **ethta1** -lr*gradient@**ethta1**_</font>  
  ![](.ML_concepts_images/4575c2c2.png)
  [Reference](https://towardsdatascience.com/implement-gradient-descent-in-python-9b93ed7108d1)                                                                                                                                                                                                                                                                                                                                                    

#### **Explanation of N in the equation**  
![picture 8](../../images/1f414a3db11ba47069131ae8b877d90cf5b5f7a26b32868ab3903fe7a57403de.png) 
![](.ML_concepts_images/2728518c.png)
![](.ML_concepts_images/c2e62588.png)
### 1.2.3 Normalization                                                                                                                                                                                                                                                                                                                                                                  
![](.ML_concepts_images/f025ba49.png)                                                                                                                                                                                                                                                                                                                                                                  
Now that we can compute the gradient of the loss function, the procedure of **repeatedly evaluating 
the gradient** and then performing a parameter update is called Gradient Descent. [Reference](https://cs231n.github.io/optimization-1/)

### 1.2.4 [**Implement**](https://www.geeksforgeeks.org/ml-stochastic-gradient-descent-sgd/?ref=rp):  
#### [Three variants of GD](https://www.geeksforgeeks.org/ml-mini-batch-gradient-descent-with-python/?ref=rp)
  - [**Batch Gradient Descent**](https://ruder.io/optimizing-gradient-descent/index.html#gradientdescentvariants)
  - **Stochastic Gradient Descent**- one random sample
  
     The extreme case of this is a setting where the mini-batch contains only a single example. 
     This process is called Stochastic Gradient Descent (SGD) (or also sometimes on-line gradient descent).
      
  - [**Mini-batch Gradient Descent**](https://www.geeksforgeeks.org/ml-mini-batch-gradient-descent-with-python/?ref=rp)  
    Performs an update for every mini-batch of n training examples:
    >The size of the mini-batch is a hyperparameter but it is not very common to cross-validate it.   
                                                                                                                                                                                               
                                                                                                                                                                                               
![](.ML_concepts_images/1b843166.png)

|   |   |   |
|---|---|---|
| Batch  |  ![picture 9](../../images/7cd217b137245d77e32fab3d14c5e3f6fc1f245824c4ffca4848c225e386070f.png)  
 | entire training dataset  |
| SGD  | ![picture 10](../../images/2f4c6576e773055ac2bfaf6d2e5138b7320176eb1f25e87f18d982317c560bf1.png)  
  |  each training example |
| mini-batch  | ![picture 11](../../images/87a47ebba8ecd13134a25ac796d8e165a8a2f54295254e295806d6fe59ff1a3c.png)  
  | every mini-batch of n training examples  |

![picture 13](../../images/4d029ef0f5823c508396c689faea254912e502e8d52cfcbb544a7944de7d662c.png)  

![picture 14](../../images/1951046aa0d550c781521a500ea954be59b82d4c485f181172af8f4918193de2.png)  

![picture 15](../../images/ddb5521dee7d0c16b23a072b54e022445d5f183511d19198f5ca4b8383bfdfd8.png)  
![picture 16](../../images/652fbb205d14fdb71591ea5583e24ce27b118a0ea28b3d9e97e2b908395dac84.png)  