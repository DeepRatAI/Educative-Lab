<!-- Auto-translated to English (best-effort). Review for accuracy. -->

# 📊 Lesson 02: Simple Linear Regression

**Module 1: Machine Learning with Python**

---

## 📋 Description

In this lesson you will learn one of the fundamental algorithms of Machine Learning: **Simple Linear Regression**. You will discover how to model linear relationships between variables, understand the mathematics behind the algorithm, and apply it to real prediction problems.

Linear regression is the basis for understanding more complex algorithms and is widely used in industries such as finance, real estate, marketing, and data science.

---

## 🎯 Learning Objectives

By completing this lesson, you will be able to:

1. **Understand** what linear regression is and when to use it
2. **Explain** the mathematics behind the algorithm (equation of the line, least squares)
3. **Implement** linear regression from scratch with NumPy
4. **Use** Scikit-learn to train regression models
5. **Interpret** coefficients, intercept and evaluation metrics
6. **Evaluate** models using R², MSE, RMSE and MAE
7. **View** regression lines and residuals
8. **Identify** limitations and assumptions of the model

---

## 📚 Lesson Content

### 1. **Theory** (`leccion_teorica.md`)

- What is linear regression?
- Equation of the line: y = mx + b
- Ordinary least squares (OLS) method
- Linear regression assumptions
- Evaluation metrics (R², MSE, RMSE, MAE)
- Interpretation of coefficients
- Real world use cases

### 2. **Guided Practice** (`02_regression_linear_simple.ipynb`)

- Environment configuration
- Data exploration and visualization
- Implementation from scratch with NumPy
- Linear regression with Scikit-learn
- Model evaluation
- Residue analysis
- Predictions with new data
- Complete example: Salary prediction

### 3. **Exercises** (`exercises.ipynb`)

- Exercise 1: Car Price Prediction
- Exercise 2: Relationship between advertising and sales
- Exercise 3: Fuel consumption analysis
- Exercise 4: Grade prediction
- Exercise 5: Project - Housing prices

### 4. **Solutions** (`solutions.ipynb`)

- Complete solutions with explanations
- Commented and optimized code
- Interpretation of results
- Best practices

---

## ⏱️ Estimated Duration

- **Theory**: 60-75 minutes
- **Guided practice**: 90-120 minutes
- **Exercises**: 90-120 minutes
- **Total**: 4-5 hours

---

## 📋 Prerequisites

### Required Knowledge:

- ✅ Lesson 01: Introduction to Machine Learning (completed)
- ✅ Basic Python
- ✅ NumPy and Pandas fundamentals
- ✅ Basic Matplotlib
- ✅ Basic algebra (linear equations)

### Required Libraries:```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error
```
---

## 🚀 How to Use this Lesson

### Recommended Order:

1. **📖 Read the theory** (`leccion_teorica.md`)

   - Understand the fundamental concepts
   - Review the math calmly
   - Take notes of key concepts

2. **💻 Follow the guided practice** (`02_regresion_linear_simple.ipynb`)

   - Run each cell step by step
   - Experiment by modifying values
   - Watch the results change

3. **✏️ Complete the exercises** (`exercises.ipynb`)

   - Try to solve them without seeing the solutions
   - Use theory and practice as a reference
   - Take your time to understand

4. **✅ Check the solutions** (`solutions.ipynb`)
   - Compare your answers
   - Understand alternative approaches
   - Learn from best practices

---

## 🔑 Key Concepts

| Concept | Description |
| --------------------------- | ------------------------------------------------------------------ |
| **Independent Variable (X)** | Feature or predictor that we use to make predictions |
| **Dependent Variable (y)** | Target or variable that we want to predict |
| **Coefficient (m)** | Slope of the line, indicates how much y changes for each unit of X |
| **Intercept (b)** | Point where the line crosses the Y axis when X=0 |
| **Waste** | Difference between actual and predicted values ​​|
| **R² (R-squared)** | Proportion of variance explained by the model (0-1) |
| **MSE** | Mean Squared Error - average squared errors |
| **RMSE** | MSE root - error in the same units as and |
| **MAE** | Mean Absolute Error - average of absolute errors |

---

## 📊 Important Formulas

### Equation of the Line:```
y = mx + b
```
### Calculation of the Coefficient (slope):```
m = Σ[(xi - x̄)(yi - ȳ)] / Σ[(xi - x̄)²]
```
### Intercept Calculation:```
b = ȳ - m * x̄
```
### R² (Coefficient of Determination):```
R² = 1 - (SS_res / SS_tot)
```
Where:

- SS_res = Σ(yi - ŷi)² (sum of squared residuals)
- SS_tot = Σ(yi - ȳ)² (total variance)

---

## 🛠️ Settings in Google Colab

### Option 1: Run in the Cloud

1. Open [Google Colab](https://colab.research.google.com/)
2. Upload the notebook or open it from GitHub
3. Execute: `Runtime > Run all` or use `Shift + Enter` cell by cell

### Option 2: Connect to GitHub```python
# Clonar el repositorio (si está en GitHub)
!git clone https://github.com/TU_USUARIO/EducativeMaterial.git
%cd EducativeMaterial/lessons/Modulo_01_Machine_Learning_with_Python/02_Regresion_Lineal_Simple/
```
### Verify Installation:```python
import sys
print(f"Python: {sys.version}")

import numpy as np
import pandas as pd
import sklearn

print(f"NumPy: {np.__version__}")
print(f"Pandas: {pd.__version__}")
print(f"Scikit-learn: {sklearn.__version__}")
```
---

## 🎯 Success Criteria

By the end of this lesson, you should be able to:

- [ ] Explain what linear regression is to a classmate
- [ ] Implement linear regression from scratch
- [ ] Train a model with Scikit-learn
- [ ] Interpret the R² value correctly
- [ ] Identify if a model is good or bad
- [ ] View the regression line
- [ ] Analyze waste to detect problems
- [ ] Make predictions with new data
- [ ] Explain limitations of the model

---

## 📈 Real World Examples

This lesson includes examples based on:

1. **💰 Salary Prediction** - Experience → Salary
2. **🏠 Home Prices** - Size → Price
3. **🚗 Car Value** - Age → Price
4. **📺 Advertising Effectiveness** - Investment → Sales
5. **⛽ Fuel Consumption** - Vehicle weight → Consumption

---

## 💡 Tips for Success

### During the Theory:

- 📝 Take notes of important formulas
- 🖊️ Draw graphs to visualize concepts
- 🔄 Relate with examples from your daily life

### During Practice:

- 🎮 Experiment by changing parameters
- 📊 Watch the graphics change
- 🐛 Don't be afraid to make mistakes - learn from them

### During the Exercises:

- ⏸️ Take breaks every 30-45 minutes
- 🤔 Think before you see the solutions
- 💬 Discuss with colleagues if possible

---

## ⚠️ Common Mistakes to Avoid

1. ❌ **Do not view data first** → Always explore with graphs
2. ❌ **Ignore residuals** → They can reveal model problems
3. ❌ **Blindly trust R²** → Can deceive with small data
4. ❌ **Do not verify assumptions** → Linear regression has requirements
5. ❌ **Extrapolate too far** → Predictions outside the range are risky
6. ❌ **Forget to scale/normalize** → Important when there are multiple features

---

## 🔗 Additional Resources

### Official Documentation:

- [Scikit-learn: Linear Regression](https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LinearRegression.html)
- [NumPy Documentation](https://numpy.org/doc/stable/)
- [Pandas User Guide](https://pandas.pydata.org/docs/user_guide/index.html)

### Recommended Tutorials:

- [Khan Academy: Linear Regression](https://www.khanacademy.org/math/statistics-probability/describing-relationships-quantitative-data/introduction-to-trend-lines/v/linear-regression-and-correlation-tutorial)
- [StatQuest: Linear Regression](https://www.youtube.com/watch?v=nk2CQITm_eo)

### Extra Practice:

- [Kaggle: House Prices Competition](https://www.kaggle.com/c/house-prices-advanced-regression-techniques)
- [Google Colab Notebooks Gallery](https://colab.research.google.com/notebooks/)

---

## 🎓 Knowledge Assessment

### Self-Assessment Questions:

1. What does it mean that R² = 0.85?
2. What is the difference between MSE and RMSE?
3. What does a negative coefficient indicate?
4. When should you NOT use linear regression?
5. What is waste and why is it important?

### Mini Quiz:

Respond mentally:

- If X increases 5 units and m=3, how much does y increase?
- Is R²=0.3 a good model?
- What metric do you prefer to compare models with different scales?

---

## 🚀 Next Steps

After completing this lesson:

1. **Continue with**: Lesson 03 - Multiple Linear Regression
2. **Practice more**: Search datasets on Kaggle and apply linear regression
3. **Go deeper**: Research regularization (Ridge, Lasso)
4. **Share**: Explain what you learned to someone else

---

## 📞 Support

If you have questions:- 💬 Review the theoretical material again
- 🔍 Search the official documentation
- 👥 Ask on forums (Stack Overflow, Reddit r/learnmachinelearning)
- 📧 Consult with your instructor or classmates

---

## ✅ Progress Checklist

Mark your progress:

- [ ] I read and understood the complete theory
- [ ] I completed the guided practice notebook
- [ ] I ran all the examples successfully
- [ ] I completed all 5 exercises
- [ ] I reviewed the solutions and understood the differences
- [ ] I can explain R² to someone else
- [ ] I know when to use linear regression
- [ ] I can implement regression from scratch
- [ ] I understand how to interpret residuals
- [ ] I am ready for the next lesson

---

**Good luck with your learning! 🎉**

_Remember: Linear regression is the basis of many advanced algorithms. Master it well!_ 💪