<!-- Auto-translated to English (best-effort). Review for accuracy. -->

# 📊 Simple Linear Regression - Complete Theory

**Module 1: Machine Learning with Python - Lesson 02**

---

## 📑 Table of Contents

1. [Introduction](#1-introduction)
2. [What is Linear Regression?](#2-what-is-linear-regression)
3. [The Mathematics Behind: Equation of the Line](#3-the-mathematics-behind-equation-of-the-line)
4. [Ordinary Least Squares (OLS) Method](#4-ols-ordinary-least-squares-method)
5. [Evaluation Metrics](#5-evaluation-metrics)
6. [Linear Regression Assumptions](#6-linear-regression-assumptions)
7. [Interpretation of Results](#7-interpretation-of-results)
8. [Residue Analysis](#8-residue-analysis)
9. [Limitations and When NOT to Use Linear Regression](#9-limitations-and-when-not-to-use-linear-regression)
10. [Real World Applications](#10-real-world-applications)

---

## 1. Introduction

**Simple linear regression** is one of the most fundamental and widely used algorithms in Machine Learning and statistics. It is the first step to understanding more complex models and provides a solid foundation for supervised learning.

### Why is it important?

- 🎯 **Foundation**: Base for more advanced algorithms
- 📈 **Interpretable**: Easy to understand and explain
- ⚡ **Fast**: Computationally efficient
- 🔧 **Versatile**: Applicable to many problems
- 📊 **Visual**: Easy to visualize results

### Historical Context

Linear regression was developed by **Francis Galton** in the 19th century while studying the inheritance of physical characteristics. The term "regression" comes from his observation that children's heights tended to "regress" toward the population mean.

---

## 2. What is Linear Regression?

### Formal Definition

**Simple linear regression** is a statistical method that models the linear relationship between:

- An **independent variable** (X) - also called predictor or feature
- A **dependent variable** (y) - also called response or target

### Real World Analogy

Imagine that you want to predict your final grade based on your hours of study:```
Horas de Estudio (X) → [MODELO] → Calificación (y)
```
If you study more hours, you hope to get a better grade. Linear regression finds the **best straight line** that represents this relationship.

### Objective

Find the equation of a straight line that:

1. **Best fit** observed data
2. **Minimize** the error between predictions and actual values
3. **Allow** to make predictions for new values

### Types of Relationships```
Positiva: X ↑ → y ↑     Negativa: X ↑ → y ↓     Sin relación: X ↑ → y = ?
    y                        y                         y
    |    /                   |  \                      |  • •  •
    |   /                    |   \                     | •  • •
    |  /                     |    \                    |• •  •
    | /                      |     \                   |  • • •
    |/_____x                 |______\x                 |_______x
```
---

## 3. The Mathematics Behind: Equation of the Line

### Fundamental Equation```
y = mx + b
```
Where:

- **y**: Dependent variable (what we predict)
- **x**: Independent variable (what we know)
- **m**: Slope (coefficient) - how much y changes for each unit of x
- **b**: Intercept - value of y when x = 0

### In Machine Learning Notation```
ŷ = β₀ + β₁x
```
Where:

- **ŷ** (y-hat): Predicted value
- **β₀** (zero beta): Intercept
- **β₁** (beta one): Coefficient

### Numerical Example

Suppose we discover:```
Salario = 30,000 + 5,000 × Años_Experiencia
```
**Interpretation:**

- If you have **0 years** of experience: Salary = $30,000 (intercept)
- For each **additional year**: Salary increases $5,000 (pending)
- With **5 years**: Salary = 30,000 + 5,000×5 = $55,000

### Display```
Salario ($)
    |
80k |                    •
    |                 •
60k |              •
    |           •
40k |        •
    |     •
20k |  •
    |___________________
      0  2  4  6  8  10
         Años Experiencia
```
---

## 4. Ordinary Least Squares (OLS) Method

### What is OLS?

**Ordinary Least Squares** is the most common method for finding the best values ​​of **m** and **b**.

### Objective: Minimize Error

We want to minimize the **sum of squared residuals**:```
SSE = Σ(yi - ŷi)²
```
Where:

- **yi**: Real value
- **ŷi**: Predicted value
- **(yi - ŷi)**: Residue (error)

### Why Squared?

1. **Eliminate negative signs**: -5 and +5 are treated the same
2. **Penalizes large errors**: An error of 10 is heavier than two errors of 5
3. **Mathematically convenient**: Differentiable and convex function

### Formulas to Calculate m and b

#### Slope (m):```
       Σ[(xi - x̄)(yi - ȳ)]
m = ─────────────────────────
           Σ[(xi - x̄)²]
```
It can also be expressed as:```
       Cov(x, y)
m = ─────────────
        Var(x)
```

#### Intercepto (b):

```
b = ȳ - m × x̄
```
Where:

- **x̄**: Mean of X
- **ȳ**: Mean of y

### Manual Calculation Example

Data:```
X (horas): [1, 2, 3, 4, 5]
y (calif): [2, 4, 5, 4, 5]
```
**Step 1: Calculate averages**```
x̄ = (1+2+3+4+5)/5 = 3
ȳ = (2+4+5+4+5)/5 = 4
```
**Step 2: Calculate deviations and products**```
xi  yi  (xi-x̄)  (yi-ȳ)  (xi-x̄)(yi-ȳ)  (xi-x̄)²
1   2    -2      -2         4           4
2   4    -1       0         0           1
3   5     0       1         0           0
4   4     1       0         0           1
5   5     2       1         2           4
                          ──          ──
                          6           10
```
**Step 3: Calculate slope**```
m = 6/10 = 0.6
```
**Step 4: Calculate intercept**```
b = 4 - 0.6×3 = 4 - 1.8 = 2.2
```
**Resulting equation:**```
y = 0.6x + 2.2
```
---

## 5. Evaluation Metrics

### 1. R² (Coefficient of Determination)

**Definition**: Proportion of the variance in y that is explained by X.```
       SS_res
R² = 1 - ──────
       SS_tot
```
Where:

- **SS_res** = Σ(yi - ŷi)² (sum of squared residuals)
- **SS_tot** = Σ(yi - ȳ)² (total variance)

**Interpretation:**

- **R² = 1.0**: Perfect model (explains 100% of the variance)
- **R² = 0.8**: Very good model (explains 80%)
- **R² = 0.5**: Moderate model (explains 50%)
- **R² = 0.0**: Model does not explain anything (same as predicting the mean)
- **R² < 0.0**: Model worse than predicting the mean

**General rules:**```
R² > 0.9  → Excelente
R² > 0.7  → Bueno
R² > 0.5  → Moderado
R² < 0.3  → Pobre
```
### 2. MSE (Mean Square Error)```
       Σ(yi - ŷi)²
MSE = ─────────────
           n
```
- **Advantage**: Penalizes large errors
- **Disadvantage**: Squared units (difficult to interpret)

### 3. RMSE (Root Mean Square Error)```
RMSE = √MSE
```
- **Advantage**: Same units as and (easy to interpret)
- **Use**: "The model is wrong on average ±X units"

### 4. MAE (Mean Absolute Error)```
       Σ|yi - ŷi|
MAE = ────────────
           n
```
- **Advantage**: Less sensitive to outliers than MSE
- **Interpretation**: Average error without considering direction

### Metric Comparison

| Metric | Units | Outliers Sensitivity | Interpretation |
| -------- | ------------- | --------------------- | ------------------------ |
| **R²** | None (0-1) | Medium | % explained variance |
| **MSE** | and² | High | Penalizes big mistakes |
| **RMSE** | and | High | Average error |
| **MAE** | and | Low | Average absolute error |

### Practical Example

House Price Prediction:```python
y_real = [100k, 150k, 200k, 250k, 300k]
y_pred = [110k, 145k, 205k, 240k, 310k]

# Errores individuales
errores = [10k, -5k, 5k, -10k, 10k]

# MAE = (10 + 5 + 5 + 10 + 10) / 5 = 8k
# El modelo se equivoca en promedio ±$8,000

# RMSE ≈ 8.4k (ligeramente mayor por errores al cuadrado)
```
---

## 6. Linear Regression Assumptions

For linear regression to be valid, the data must meet certain assumptions:

### 1. **Linearity**

The relationship between X and y must be linear.```
✅ Lineal          ❌ No lineal
y                  y
|  •  •            |     • •
| •  •             |   •     •
|•  •              | •         •
|____x             |_____________x
```
**Verification**: Scatter plot

### 2. **Independence**

The observations must be independent of each other.

**Violation**: Time series data without considering autocorrelation

### 3. **Homoscedasticity**

The variance of the residuals must be constant.```
✅ Homoscedástico    ❌ Heteroscedástico
Residuos             Residuos
|  • • •             |       • •
| • • • •            |     • • •
|  • • •             |   • • •
|_______x            | • •
                     |_______x
```
**Verification**: Plot of residuals vs predictions

### 4. **Normal Residues**

Residues should be normally distributed (especially important for small samples).

**Verification**: Histogram or Q-Q plot of residuals

### 5. **No Multicollinearity** (for multiple regression)

The independent variables should not be highly correlated with each other.

### Consequences of Violating Assumptions

| Allegedly Violated | Consequence |
| ----------------- | -------------------------------- |
| Linearity | Incorrect predictions |
| Independence | Wrong confidence intervals |
| Homoscedasticity | Incorrect standard errors |
| Normality | Invalid hypothesis testing |

---

## 7. Interpretation of Results

### Interpret the Coefficient (m)

**Example**: Salary = 30,000 + 5,000 × Years_Experience```
m = 5,000
```
**Correct interpretation:**

> "For each additional year of experience, salary increases on average $5,000, **holding everything else constant**."

**Coefficient signs:**

- **m > 0**: Positive relationship (X ↑ → y ↑)
- **m < 0**: Negative relationship (X ↑ → y ↓)
- **m = 0**: There is no linear relationship

### Interpret the Intercept (b)```
b = 30,000
```
**Interpretation:**

> "The expected salary for someone with 0 years of experience is $30,000."

**⚠️ Caution**: The intercept only makes sense if X=0 is a possible and realistic value.

### Interpret R²

**Example**: R² = 0.75

**Correct interpretation:**

> "75% of the variability in salaries can be explained by years of experience. The remaining 25% is due to other factors not included in the model."

**NOT means:**

- ❌ "The model is 75% accurate"
- ❌ "The model is right 75% of the time"

---

## 8. Residue Analysis

### What is Waste?```
Residuo = Valor Real - Valor Predicho
    e   =    yi     -      ŷi
```
The residuals tell us **how wrong the model is** for each observation.

### Residual Plots

#### 1. Residuals vs Predictions```
✅ Buen modelo          ❌ Mal modelo (patrón curvo)
Residuos                Residuos
|  • • •                |      • •
| • • • •               |    •     •
|  • • •                |  •         •
|_______ŷ               |_____________ŷ
```
**What to look for:**

- ✅ Points randomly distributed around 0
- ❌ Patterns (curves, funnels) indicate problems

#### 2. Q-Q Plot (Normal)

Compare the distribution of residuals with a normal distribution.```
✅ Normal              ❌ No normal
|     •                |        •
|   •                  |      •
| •                    |   •
|•___                  | •
                       |•
```
### Diagnose Problems

| Waste Pattern | Problem | Solution |
| ------------------- | ------------------- | -------------------------------------- |
| U curve | Nonlinearity | Transform variables, use polynomials |
| Funnel | Heteroskedasticity | Transform and (log, sqrt) |
| Very distant points | Outliers | Investigate and possibly remove |
| Temporary pattern | Autocorrelation | Time series models |

---

## 9. Limitations and When NOT to Use Linear Regression

### Main Limitations

1. **Linear relationships only**
   - Does not capture curves, exponentials, logarithmics
2. **Sensitive to outliers**
   - An extreme point can change the line a lot
3. **Risky extrapolation**
   - Predicting outside the data range can be very inaccurate
4. **Assume constant relationship**
   - Does not model interactions or changes over time
5. **You need enough data**
   - With few points, the model is not reliable

### When NOT to Use Linear Regression

❌ **Clearly non-linear relationship**```python
# Ejemplo: Crecimiento exponencial
# y = e^x no puede modelarse bien con y = mx + b
```
❌ **Categorical data as target**```python
# Mal: y = "Aprobado" / "Reprobado"
# Usar: Regresión Logística
```

❌ **Muchos outliers extremos**

```python
# Considerar: Regresión robusta o remover outliers
```
❌ **Data with complex temporal structure**```python
# Considerar: Modelos ARIMA, Prophet
```
❌ **Severe violation of assumptions**```python
# Verificar residuos antes de confiar en el modelo
```
### Alternatives

| Situation | Alternative |
| --------------------------- | -------------------------- |
| Curve ratio | Polynomial Regression, Splines |
| Multiple variables | Multiple linear regression |
| Classification | Logistic regression, trees |
| Time series | ARIMA, Prophet |
| Complex nonlinear data | Random Forest, XGBoost |

---

## 10. Real World Applications

### 1. **Finances**

- Stock price prediction based on indicators
- Credit risk estimation
- Asset valuation```python
Precio_Acción = β₀ + β₁ × Volumen_Transacciones
```
### 2. **Real Estate**

- Property appraisal
- Rent prediction```python
Precio_Casa = β₀ + β₁ × Tamaño_m²
```
### 3. **Marketing**

- ROI of advertising campaigns
- Sales prediction```python
Ventas = β₀ + β₁ × Gasto_Publicidad
```
### 4. **Health**

- Drug dosage prediction
- Relationship between age and blood pressure```python
Dosis = β₀ + β₁ × Peso_Paciente
```
### 5. **Education**

- Grade prediction
- Analysis of academic success factors```python
Calificación = β₀ + β₁ × Horas_Estudio
```
### 6. **Science**

- Analysis of relationships in experiments
- Instrument calibration```python
Temperatura_Real = β₀ + β₁ × Lectura_Sensor
```
---

## 📊 Complete Example: Step by Step

### Context

A company wants to predict its monthly sales based on advertising spending.

### Data```
Publicidad ($k): [10, 15, 20, 25, 30, 35, 40]
Ventas ($k):     [40, 55, 65, 75, 85, 95, 100]
```
### Step 1: Viewing

Create a scatterplot to check linearity.

### Step 2: Line Calculation```
x̄ = 25
ȳ = 73.57

m = Cov(x,y) / Var(x) ≈ 2.29
b = ȳ - m×x̄ ≈ 16.32

Ecuación: Ventas = 16.32 + 2.29 × Publicidad
```
### Step 3: Interpretation

> "For every additional $1,000 in advertising, sales increase by an average of $2,290."

### Step 4: Evaluation```
R² ≈ 0.95 → Excelente ajuste
RMSE ≈ 3.2k → Error promedio de ±$3,200
```
### Step 5: Prediction```
Si Publicidad = $45k:
Ventas = 16.32 + 2.29 × 45 = $119,370
```
### Step 6: Validation

Check residue to ensure there are no patterns.

---

## 🎯 Summary of Key Concepts

### Equation```
y = mx + b
```
### Objective

Minimize: Σ(yi - ŷi)²

### Key Metrics

- **R²**: Goodness of fit (0-1)
- **RMSE**: Average error in units of y
- **MAE**: Average absolute error

### Assumptions

1. Linearity
2. Independence
3. Homoscedasticity
4. Normality of waste

### Interpretation

- **m**: Change in y for each unit of x
- **b**: Value of y when x=0
- **R²**: % of explained variance

### Waste

- Difference between real and predicted
- They must be distributed randomly
- Reveal problems with the model

---

## 💡 Final Tips

1. **Always visualize first** – Charts reveal patterns
2. **Check assumptions** - Don't assume they are true
3. **Analyze residues** - They tell you if the model is appropriate
4. **Don't extrapolate far** - Predictions outside the range are risky
5. **Context matters** - An R²=0.6 can be excellent or terrible depending on the domain
6. **Correlation ≠ Causation** - Regression does not prove causality

---

**You have completed the theory of Simple Linear Regression!** 🎉

Now you are ready to apply these concepts in practice. Remember: linear regression is simple but powerful when used correctly.

**Next step**: Practice with the guided notebook to see these concepts in action.