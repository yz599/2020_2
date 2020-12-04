Workflow for treating missing values:
- missing values to **null values**
- **amount** and **type** of missingness
- **delete** or **impute** missing value
---
# 1. Missing value 
## 1.1 Missing data representation - Null values
### None Pythonic missing data
- **"Object"** cannot be used in any arbitrary NumPy/Pandas array, but only in arrays with data type 'object' (i.e., arrays of Python objects):
- The use of Python objects in an array also means that if you perform aggregations like sum() or min() across an array with a None value, you will generally get an error:

![](.Preprocessing_images/fd224013.png)
### NaN: missing numerical data
- **floating-point value**![](.Preprocessing_images/59e3f7b3.png)
- the result of arithmetic with NaN will be another NaN:  
![](.Preprocessing_images/99b5f81f.png)
![](.Preprocessing_images/7943ab43.png)

### NaN and None in Pandas  
![](.Preprocessing_images/0e322d72.png)
-  converts the None to a NaN value.
![](.Preprocessing_images/99dbde7a.png)

### Check NUll values
![](.Preprocessing_images/eb3d0900.png)  
![](.Preprocessing_images/542e3908.png)

|   | types  | Operations  |  check |   |
|---|---|---|---|---|
| None  |Object (Nonetype)  | Logical  |None==None T   |np.isnan(None) F  |
| np.nan  |float  | +-/*  | np.nan==np.nan F  |np.isnan(np.nan) T   |

>To check for None, use the comparison operator == and to check for 'NaN' use np.isnan(). Fortunately, pandas intrinsically converts None to NaN values, so that you don't need to worry!

## 1.2 [Inspect missing data](https://datascientistnotebook.com/2017/05/23/handling-missing-data/?utm_campaign=News&utm_medium=Community&utm_source=DataCamp.com)
[Reference-overall](https://campus.datacamp.com/courses/dealing-with-missing-data-in-python/does-missingness-have-a-pattern?ex=2)  
[Reference1-timeseries](https://campus.datacamp.com/courses/machine-learning-for-time-series-data-in-python/predicting-time-series-data?ex=7)  
[Reference2-pandas](https://campus.datacamp.com/courses/data-manipulation-with-pandas/creating-and-visualizing-dataframes?ex=7)  
[Reference3-machinelearning](https://learn.datacamp.com/courses/preprocessing-for-machine-learning-in-python)
### 1.2.1 Counts
 - df.info()
 - df.isnull/df.isna().sum()
 - df.notnull()
 ### 1.2.1 Where
 - df.isnull().index.tolist()
 - np.where(np.isnan(df))
 - **Visualization**
   - sns.heatmap(df.isnull())
   - **Missingno package**
 