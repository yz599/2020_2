# 2. [Hyperparameter](https://www.analyticssteps.com/blogs/introduction-model-hyperparameter-and-tuning-machine-learning)

 - a hyperparameter is a parameter whose value is used to control the **learning process**.
 - By contrast, the values of other parameters (typically node weights) are derived via **training**.
 - Two categories:
   -  **model hyperparameters**, that cannot be inferred while fitting the machine to the training set because they refer to the **model selection task**, _-topology and size of a neural network_
   -  or **algorithm hyperparameters**, that in principle have no influence on the performance of the model but affect the **speed and quality of the learning process.** _- learning rate and mini-batch size._
   -  **Cross-validation** is often used to estimate this generalization performance.[2]

>For instance, LASSO is an algorithm that adds a **regularization hyperparameter** to ordinary least squares regression, which has to be set **before** estimating the parameters through the training algorithm.
