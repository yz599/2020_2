SVPErM 
- find margin
- Optimization problem

# 1. [Intuition](https://www.cs.princeton.edu/courses/archive/spring16/cos495/slides/ML_basics_lecture4_SVM_I.pdf)


![](../.Neural_net_work_images/8c45874f.png)  
![](.4_SVM_images/bcf9ea29.png)![](.4_SVM_images/7d879d27.png)
![](.4_SVM_images/5f2781e0.png)![](.4_SVM_images/33a551e9.png)   

# 1. Geometric interpretation
Geometrically, finding the HMC for two separable classes amounts to the following:

- Draw the convex hull40 around each class (these are the polygons surrounding each class in Figure 14.3).

- Draw the shortest line segment that connects the two convex hulls (this is the dotted line segment in Figure 14.3).

- The perpendicular bisector of this line segment is the HMC!

- The margin boundaries are formed by drawing lines that pass through the support vectors and are parallel to the separating hyperplane (these are the dashed line segments in Figure 14.3).

![](.4_SVM_images/a8e3aa99.png)

## Understand the margin=1
- Wx+b=0 has infinite equivalent representation ...
say x+y+3=0;   .5x+.5y+1.5=0;   3x+3y+9=0;
  > - Note this is the hyperplane (works for points on the plane), not the point not on.
  > - points not on will give Wx+b!=0 for example Wx+b=1
  
  - The distance to the hyperplane is the same:
   ![](.4_SVM_images/5e841e21.png)

  - if Wx+b=1 **<font color='red'>Functional distance**</font>
    ![](.4_SVM_images/292ed963.png)![](.4_SVM_images/90bebc01.png) 
    
# 2. [Duality](https://www.cs.princeton.edu/courses/archive/spring16/cos495/slides/AndrewNg_SVM_note.pdf)
![](.4_SVM_images/f78db351.png)

## 2.1 Intuition - Two optimization/steps
 **<font color='red'>1. Find support vector</font>**
![](.4_SVM_images/8b09d092.png)  
   
**<font color='red'>2. Minimize loss</font>**

![](.4_SVM_images/41da36a3.png)  

>with slack variable   
![](.4_SVM_images/01710d04.png)
   
## 2.2 optimization problem
 for finding the **optimal margin classifier:**
 ![](.4_SVM_images/4b049395.png)  
 ![](.4_SVM_images/2c92d5c0.png)
---
### [Why does lagrange multiplier work](https://www.quora.com/Intuitively-how-do-Lagrange-multipliers-work-in-SVMs)
### [2.2.1 Lagrangian duality](file:///F:/2020_2/2020/Notes_concepts/Books/AndrewNg_SVM_note.pdf)
#### **Lagrange multiplier a**  
![](.4_SVM_images/3f4ca9b5.png)   

>![](.4_SVM_images/0b77b7dd.png)  
> - Taking the derivative of **L** with respect to w,andb and setting those to zero,
> - Useful to get dual lar objective function **see below**

#### **Dual Lagrangian objective function - GD could be applied**  
![](.4_SVM_images/5672ad31.png)  

![](.4_SVM_images/27739ff8.png)

#### KKT condition of multiplier - help find <font color='red'>support vector</font>
![](.4_SVM_images/a3063ec7.png)
![](.4_SVM_images/5a6700f1.png)

#### [Compute weight vector](https://notebook.zoho.com/app/index.html#/all-notes/eodp29495e3280f3242f998bdfac80c69e2cb)

![](.4_SVM_images/6eab5d8d.png)



# 3. Gradient descent
![](.4_SVM_images/cf38d7fb.png)
## Rewrite loss function with slack variable
![](.4_SVM_images/0c1ac249.png)
![](.4_SVM_images/5ddf7cce.png)

>Inside red box: <font color='red'>distance to margin compare with 1</font>
![](.4_SVM_images/a4fe99b6.png)
## 3.1 Gradient
### 3.1 Without regularization

- with respect to function f(x)
![](.4_SVM_images/8df493fc.png)

- with respect to W:
![](.4_SVM_images/05c12878.png)
  
![](.4_SVM_images/6cf81d2c.png)

# 3. Soft margin



# SVM and ANN
