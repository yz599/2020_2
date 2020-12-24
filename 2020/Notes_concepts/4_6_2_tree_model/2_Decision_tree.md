#  Decision tree - split by feature values  
![](.1_Navive_Bayesian_classification_images/35802a01.png)
# 1. Tree is representing a boolean function
<font color='red'>We're actually looking for a **_boolean function_**</font>
![](../.ML_images/174b79a8.png)
# 2. Feature selection by information gain
<font color="'red"> Splitting data by features values - learning from features - conditional entropy</font>>

## 2.1 Information Gain (IG)
- mutual information of H(y) and conditional entropy H(y|x)
- reduction in entropy, that would occur if we split on this attribute/feature H(y|x):
![](../.ML_images/ea24b30f.png)
 **<font color='red'>IG(y,x)=H(Y)-H(Y|X)**

  ![](../.ML_images/9fe260b2.png)

# 3. Implement
Idea: (recursively) choose “most significant”
attribute/feature as root of (sub)tree
![](.1_Navive_Bayesian_classification_images/5773c9bc.png)  

# 4. Overfitting