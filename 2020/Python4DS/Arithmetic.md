# Rules of broadcasting
- two have different dimensions
- row-wise if match
- otherwise broadcasting
# 1. Broadcasting
## 1.1 Rules
**Rule 1:** If the two arrays differ in their number of dimensions, 
the shape of the one with fewer dimensions is padded with ones on its 
leading (left) side.

**Rule 2:** If the shape of the two arrays does not match in any dimension, 
the array with **shape equal to 1** in that **dimension is stretched** to match 
the other shape.


![](.Arithmetic_images/4611b5e5.png)  


1. one has less dimension than the other
2. one should has the same dimension (or 1) in the second axis as the other one (less dimension)

**Example:**

![](.Arithmetic_images/ac53fd5f.png)![](.Arithmetic_images/bd683cff.png)


- a has fewer dimensions
  - M.shape=(2,<font color='red'>~~3~~</font>)/(3,1)
  - a.shape=(<font color='red'>~~3~~</font>,)/(3,)
- by rule 1
  - M.shape -> (2, 3)/(3,1)
  - a.shape -> (1, 3)/(1,3)
- by rule2
  - M.shape -> (2, 3)/(3,3)
  - a.shape -> (2, 3) /(3,3)


## 1.2 Application
row-wise 
### 1.2.1 np.array-row  
![](.Arithmetic_images/e085614b.png)![](.Arithmetic_images/2b256bb5.png)
![](.Arithmetic_images/6edb4c82.png)  **<font color='red'>row-wise</font>**
### 1.2.2 df-df.col(series)

- df-row see above

- col-col  
![](.Arithmetic_images/0b00bf92.png)  

- df-col  
![](.Arithmetic_images/ab712b99.png)  
![](.Arithmetic_images/018a1cde.png)![](.Arithmetic_images/96b58377.png)  

---

![](.Arithmetic_images/fc3e5ff4.png)![](.Arithmetic_images/b1638664.png)

- Otherwise: **df-series**  
Different from numpy array the column should match as well...so  
![](.Arithmetic_images/3181729a.png)![](.Arithmetic_images/5a264bd4.png)
![](.Arithmetic_images/7a16ae0e.png)


>Difference between numpy/df arithmetic is that the df needs to align the column not the 
>elements only hence column arithmetic is not possible since the index is "index" not the "column" 

![](.Arithmetic_images/7f0bfac8.png)![](.Arithmetic_images/d0b16e87.png)
# 2. Dimension of array
## 1_D

| functions  |Dimension   | 
|---|---|
|np.arange   |1-D   | 
|np.linspace   | 1-D  | 
|Other   |size=scalar 1-D/tuple 2_D | 
|pd.Series|1-D|
|df.col|1-D series|
|df.iloc[:,1]|1-D series|
|df.iloc[:,[]]/::2]|2-D|

![](.Arithmetic_images/fc3e5ff4.png)![](.Arithmetic_images/b1638664.png)
![](.Arithmetic_images/7f0bfac8.png)![](.Arithmetic_images/d0b16e87.png)

![](.Arithmetic_images/3eb9c517.png)![](.Arithmetic_images/31bf59ad.png)


##2.2 1_D to 2_D/row2col
![](.Arithmetic_images/35bb9d05.png)

