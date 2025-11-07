# 📊 Regresión Lineal Simple - Teoría Completa

**Módulo 1: Machine Learning with Python - Lección 02**

---

## 📑 Tabla de Contenidos

1. [Introducción](#1-introducción)
2. [¿Qué es la Regresión Lineal?](#2-qué-es-la-regresión-lineal)
3. [La Matemática Detrás: Ecuación de la Recta](#3-la-matemática-detrás-ecuación-de-la-recta)
4. [Método de Mínimos Cuadrados Ordinarios (OLS)](#4-método-de-mínimos-cuadrados-ordinarios-ols)
5. [Métricas de Evaluación](#5-métricas-de-evaluación)
6. [Supuestos de la Regresión Lineal](#6-supuestos-de-la-regresión-lineal)
7. [Interpretación de Resultados](#7-interpretación-de-resultados)
8. [Análisis de Residuos](#8-análisis-de-residuos)
9. [Limitaciones y Cuándo NO Usar Regresión Lineal](#9-limitaciones-y-cuándo-no-usar-regresión-lineal)
10. [Aplicaciones en el Mundo Real](#10-aplicaciones-en-el-mundo-real)

---

## 1. Introducción

La **regresión lineal simple** es uno de los algoritmos más fundamentales y ampliamente utilizados en Machine Learning y estadística. Es el primer paso para entender modelos más complejos y proporciona una base sólida para el aprendizaje supervisado.

### ¿Por qué es importante?

- 🎯 **Fundamento**: Base para algoritmos más avanzados
- 📈 **Interpretable**: Fácil de entender y explicar
- ⚡ **Rápido**: Computacionalmente eficiente
- 🔧 **Versátil**: Aplicable a muchos problemas
- 📊 **Visual**: Resultados fáciles de visualizar

### Contexto Histórico

La regresión lineal fue desarrollada por **Francis Galton** en el siglo XIX mientras estudiaba la herencia de características físicas. El término "regresión" viene de su observación de que las alturas de los hijos tendían a "regresar" hacia la media poblacional.

---

## 2. ¿Qué es la Regresión Lineal?

### Definición Formal

La **regresión lineal simple** es un método estadístico que modela la relación lineal entre:

- Una **variable independiente** (X) - también llamada predictor o feature
- Una **variable dependiente** (y) - también llamada respuesta o target

### Analogía del Mundo Real

Imagina que quieres predecir tu calificación final basándote en las horas de estudio:

```
Horas de Estudio (X) → [MODELO] → Calificación (y)
```

Si estudias más horas, esperas obtener una mejor calificación. La regresión lineal encuentra la **mejor línea recta** que representa esta relación.

### Objetivo

Encontrar la ecuación de una línea recta que:

1. **Mejor ajuste** los datos observados
2. **Minimice** el error entre predicciones y valores reales
3. **Permita** hacer predicciones para nuevos valores

### Tipos de Relaciones

```
Positiva: X ↑ → y ↑     Negativa: X ↑ → y ↓     Sin relación: X ↑ → y = ?
    y                        y                         y
    |    /                   |  \                      |  • •  •
    |   /                    |   \                     | •  • •
    |  /                     |    \                    |• •  •
    | /                      |     \                   |  • • •
    |/_____x                 |______\x                 |_______x
```

---

## 3. La Matemática Detrás: Ecuación de la Recta

### Ecuación Fundamental

```
y = mx + b
```

Donde:

- **y**: Variable dependiente (lo que predecimos)
- **x**: Variable independiente (lo que conocemos)
- **m**: Pendiente (coeficiente) - cuánto cambia y por cada unidad de x
- **b**: Intercepto - valor de y cuando x = 0

### En Notación de Machine Learning

```
ŷ = β₀ + β₁x
```

Donde:

- **ŷ** (y-hat): Valor predicho
- **β₀** (beta cero): Intercepto
- **β₁** (beta uno): Coeficiente

### Ejemplo Numérico

Supongamos que descubrimos:

```
Salario = 30,000 + 5,000 × Años_Experiencia
```

**Interpretación:**

- Si tienes **0 años** de experiencia: Salario = $30,000 (intercepto)
- Por cada **año adicional**: Salario aumenta $5,000 (pendiente)
- Con **5 años**: Salario = 30,000 + 5,000×5 = $55,000

### Visualización

```
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

## 4. Método de Mínimos Cuadrados Ordinarios (OLS)

### ¿Qué es OLS?

**Ordinary Least Squares** es el método más común para encontrar los mejores valores de **m** y **b**.

### Objetivo: Minimizar el Error

Queremos minimizar la **suma de residuos al cuadrado**:

```
SSE = Σ(yi - ŷi)²
```

Donde:

- **yi**: Valor real
- **ŷi**: Valor predicho
- **(yi - ŷi)**: Residuo (error)

### ¿Por qué al Cuadrado?

1. **Elimina signos negativos**: -5 y +5 se tratan igual
2. **Penaliza errores grandes**: Un error de 10 pesa más que dos de 5
3. **Matemáticamente conveniente**: Función derivable y convexa

### Fórmulas para Calcular m y b

#### Pendiente (m):

```
       Σ[(xi - x̄)(yi - ȳ)]
m = ─────────────────────────
           Σ[(xi - x̄)²]
```

También se puede expresar como:

```
       Cov(x, y)
m = ─────────────
        Var(x)
```

#### Intercepto (b):

```
b = ȳ - m × x̄
```

Donde:

- **x̄**: Media de X
- **ȳ**: Media de y

### Ejemplo de Cálculo Manual

Datos:

```
X (horas): [1, 2, 3, 4, 5]
y (calif): [2, 4, 5, 4, 5]
```

**Paso 1: Calcular medias**

```
x̄ = (1+2+3+4+5)/5 = 3
ȳ = (2+4+5+4+5)/5 = 4
```

**Paso 2: Calcular desviaciones y productos**

```
xi  yi  (xi-x̄)  (yi-ȳ)  (xi-x̄)(yi-ȳ)  (xi-x̄)²
1   2    -2      -2         4           4
2   4    -1       0         0           1
3   5     0       1         0           0
4   4     1       0         0           1
5   5     2       1         2           4
                          ──          ──
                          6           10
```

**Paso 3: Calcular pendiente**

```
m = 6/10 = 0.6
```

**Paso 4: Calcular intercepto**

```
b = 4 - 0.6×3 = 4 - 1.8 = 2.2
```

**Ecuación resultante:**

```
y = 0.6x + 2.2
```

---

## 5. Métricas de Evaluación

### 1. R² (Coeficiente de Determinación)

**Definición**: Proporción de la varianza en y que es explicada por X.

```
       SS_res
R² = 1 - ──────
       SS_tot
```

Donde:

- **SS_res** = Σ(yi - ŷi)² (suma de residuos al cuadrado)
- **SS_tot** = Σ(yi - ȳ)² (varianza total)

**Interpretación:**

- **R² = 1.0**: Modelo perfecto (explica 100% de la varianza)
- **R² = 0.8**: Modelo muy bueno (explica 80%)
- **R² = 0.5**: Modelo moderado (explica 50%)
- **R² = 0.0**: Modelo no explica nada (igual a predecir la media)
- **R² < 0.0**: Modelo peor que predecir la media

**Reglas generales:**

```
R² > 0.9  → Excelente
R² > 0.7  → Bueno
R² > 0.5  → Moderado
R² < 0.3  → Pobre
```

### 2. MSE (Error Cuadrático Medio)

```
       Σ(yi - ŷi)²
MSE = ─────────────
           n
```

- **Ventaja**: Penaliza errores grandes
- **Desventaja**: Unidades al cuadrado (difícil de interpretar)

### 3. RMSE (Raíz del Error Cuadrático Medio)

```
RMSE = √MSE
```

- **Ventaja**: Mismas unidades que y (fácil de interpretar)
- **Uso**: "El modelo se equivoca en promedio ±X unidades"

### 4. MAE (Error Absoluto Medio)

```
       Σ|yi - ŷi|
MAE = ────────────
           n
```

- **Ventaja**: Menos sensible a outliers que MSE
- **Interpretación**: Error promedio sin considerar dirección

### Comparación de Métricas

| Métrica  | Unidades      | Sensibilidad Outliers | Interpretación           |
| -------- | ------------- | --------------------- | ------------------------ |
| **R²**   | Ninguna (0-1) | Media                 | % varianza explicada     |
| **MSE**  | y²            | Alta                  | Penaliza errores grandes |
| **RMSE** | y             | Alta                  | Error promedio           |
| **MAE**  | y             | Baja                  | Error absoluto promedio  |

### Ejemplo Práctico

Predicción de precios de casas:

```python
y_real = [100k, 150k, 200k, 250k, 300k]
y_pred = [110k, 145k, 205k, 240k, 310k]

# Errores individuales
errores = [10k, -5k, 5k, -10k, 10k]

# MAE = (10 + 5 + 5 + 10 + 10) / 5 = 8k
# El modelo se equivoca en promedio ±$8,000

# RMSE ≈ 8.4k (ligeramente mayor por errores al cuadrado)
```

---

## 6. Supuestos de la Regresión Lineal

Para que la regresión lineal sea válida, los datos deben cumplir ciertos supuestos:

### 1. **Linealidad**

La relación entre X e y debe ser lineal.

```
✅ Lineal          ❌ No lineal
y                  y
|  •  •            |     • •
| •  •             |   •     •
|•  •              | •         •
|____x             |_____________x
```

**Verificación**: Gráfico de dispersión

### 2. **Independencia**

Las observaciones deben ser independientes entre sí.

**Violación**: Datos de series temporales sin considerar autocorrelación

### 3. **Homoscedasticidad**

La varianza de los residuos debe ser constante.

```
✅ Homoscedástico    ❌ Heteroscedástico
Residuos             Residuos
|  • • •             |       • •
| • • • •            |     • • •
|  • • •             |   • • •
|_______x            | • •
                     |_______x
```

**Verificación**: Gráfico de residuos vs predicciones

### 4. **Normalidad de Residuos**

Los residuos deben distribuirse normalmente (especialmente importante para muestras pequeñas).

**Verificación**: Histograma o Q-Q plot de residuos

### 5. **No Multicolinealidad** (para regresión múltiple)

Las variables independientes no deben estar altamente correlacionadas entre sí.

### Consecuencias de Violar Supuestos

| Supuesto Violado  | Consecuencia                     |
| ----------------- | -------------------------------- |
| Linealidad        | Predicciones incorrectas         |
| Independencia     | Intervalos de confianza erróneos |
| Homoscedasticidad | Errores estándar incorrectos     |
| Normalidad        | Pruebas de hipótesis inválidas   |

---

## 7. Interpretación de Resultados

### Interpretar el Coeficiente (m)

**Ejemplo**: Salario = 30,000 + 5,000 × Años_Experiencia

```
m = 5,000
```

**Interpretación correcta:**

> "Por cada año adicional de experiencia, el salario aumenta en promedio $5,000, **manteniendo todo lo demás constante**."

**Signos del coeficiente:**

- **m > 0**: Relación positiva (X ↑ → y ↑)
- **m < 0**: Relación negativa (X ↑ → y ↓)
- **m = 0**: No hay relación lineal

### Interpretar el Intercepto (b)

```
b = 30,000
```

**Interpretación:**

> "El salario esperado para alguien con 0 años de experiencia es $30,000."

**⚠️ Cuidado**: El intercepto solo tiene sentido si X=0 es un valor posible y realista.

### Interpretar R²

**Ejemplo**: R² = 0.75

**Interpretación correcta:**

> "El 75% de la variabilidad en los salarios puede explicarse por los años de experiencia. El 25% restante se debe a otros factores no incluidos en el modelo."

**NO significa:**

- ❌ "El modelo es 75% preciso"
- ❌ "El modelo acierta el 75% de las veces"

---

## 8. Análisis de Residuos

### ¿Qué son los Residuos?

```
Residuo = Valor Real - Valor Predicho
    e   =    yi     -      ŷi
```

Los residuos nos dicen **qué tan equivocado está el modelo** para cada observación.

### Gráficos de Residuos

#### 1. Residuos vs Predicciones

```
✅ Buen modelo          ❌ Mal modelo (patrón curvo)
Residuos                Residuos
|  • • •                |      • •
| • • • •               |    •     •
|  • • •                |  •         •
|_______ŷ               |_____________ŷ
```

**Qué buscar:**

- ✅ Puntos distribuidos aleatoriamente alrededor de 0
- ❌ Patrones (curvas, embudos) indican problemas

#### 2. Q-Q Plot (Normalidad)

Compara la distribución de residuos con una distribución normal.

```
✅ Normal              ❌ No normal
|     •                |        •
|   •                  |      •
| •                    |   •
|•___                  | •
                       |•
```

### Diagnosticar Problemas

| Patrón en Residuos  | Problema            | Solución                               |
| ------------------- | ------------------- | -------------------------------------- |
| Curva en U          | No linealidad       | Transformar variables, usar polinomios |
| Embudo              | Heteroscedasticidad | Transformar y (log, sqrt)              |
| Puntos muy alejados | Outliers            | Investigar y posiblemente remover      |
| Patrón temporal     | Autocorrelación     | Modelos de series temporales           |

---

## 9. Limitaciones y Cuándo NO Usar Regresión Lineal

### Limitaciones Principales

1. **Solo relaciones lineales**
   - No captura curvas, exponenciales, logarítmicas
2. **Sensible a outliers**
   - Un punto extremo puede cambiar mucho la línea
3. **Extrappolación riesgosa**
   - Predecir fuera del rango de datos puede ser muy inexacto
4. **Asume relación constante**
   - No modela interacciones o cambios en el tiempo
5. **Necesita suficientes datos**
   - Con pocos puntos, el modelo no es confiable

### Cuándo NO Usar Regresión Lineal

❌ **Relación claramente no lineal**

```python
# Ejemplo: Crecimiento exponencial
# y = e^x no puede modelarse bien con y = mx + b
```

❌ **Datos categóricos como target**

```python
# Mal: y = "Aprobado" / "Reprobado"
# Usar: Regresión Logística
```

❌ **Muchos outliers extremos**

```python
# Considerar: Regresión robusta o remover outliers
```

❌ **Datos con estructura temporal compleja**

```python
# Considerar: Modelos ARIMA, Prophet
```

❌ **Violación severa de supuestos**

```python
# Verificar residuos antes de confiar en el modelo
```

### Alternativas

| Situación                   | Alternativa                   |
| --------------------------- | ----------------------------- |
| Relación curva              | Regresión polinomial, Splines |
| Múltiples variables         | Regresión lineal múltiple     |
| Clasificación               | Regresión logística, árboles  |
| Series temporales           | ARIMA, Prophet                |
| Datos no lineales complejos | Random Forest, XGBoost        |

---

## 10. Aplicaciones en el Mundo Real

### 1. **Finanzas**

- Predicción de precios de acciones basado en indicadores
- Estimación de riesgo crediticio
- Valoración de activos

```python
Precio_Acción = β₀ + β₁ × Volumen_Transacciones
```

### 2. **Inmobiliaria**

- Tasación de propiedades
- Predicción de alquileres

```python
Precio_Casa = β₀ + β₁ × Tamaño_m²
```

### 3. **Marketing**

- ROI de campañas publicitarias
- Predicción de ventas

```python
Ventas = β₀ + β₁ × Gasto_Publicidad
```

### 4. **Salud**

- Predicción de dosificación de medicamentos
- Relación entre edad y presión arterial

```python
Dosis = β₀ + β₁ × Peso_Paciente
```

### 5. **Educación**

- Predicción de calificaciones
- Análisis de factores de éxito académico

```python
Calificación = β₀ + β₁ × Horas_Estudio
```

### 6. **Ciencia**

- Análisis de relaciones en experimentos
- Calibración de instrumentos

```python
Temperatura_Real = β₀ + β₁ × Lectura_Sensor
```

---

## 📊 Ejemplo Completo: Paso a Paso

### Contexto

Una empresa quiere predecir sus ventas mensuales basándose en el gasto en publicidad.

### Datos

```
Publicidad ($k): [10, 15, 20, 25, 30, 35, 40]
Ventas ($k):     [40, 55, 65, 75, 85, 95, 100]
```

### Paso 1: Visualización

Crear un gráfico de dispersión para verificar linealidad.

### Paso 2: Cálculo de la Línea

```
x̄ = 25
ȳ = 73.57

m = Cov(x,y) / Var(x) ≈ 2.29
b = ȳ - m×x̄ ≈ 16.32

Ecuación: Ventas = 16.32 + 2.29 × Publicidad
```

### Paso 3: Interpretación

> "Por cada $1,000 adicionales en publicidad, las ventas aumentan en promedio $2,290."

### Paso 4: Evaluación

```
R² ≈ 0.95 → Excelente ajuste
RMSE ≈ 3.2k → Error promedio de ±$3,200
```

### Paso 5: Predicción

```
Si Publicidad = $45k:
Ventas = 16.32 + 2.29 × 45 = $119,370
```

### Paso 6: Validación

Verificar residuos para asegurar que no hay patrones.

---

## 🎯 Resumen de Conceptos Clave

### Ecuación

```
y = mx + b
```

### Objetivo

Minimizar: Σ(yi - ŷi)²

### Métricas Principales

- **R²**: Bondad de ajuste (0-1)
- **RMSE**: Error promedio en unidades de y
- **MAE**: Error absoluto promedio

### Supuestos

1. Linealidad
2. Independencia
3. Homoscedasticidad
4. Normalidad de residuos

### Interpretación

- **m**: Cambio en y por cada unidad de x
- **b**: Valor de y cuando x=0
- **R²**: % de varianza explicada

### Residuos

- Diferencia entre real y predicho
- Deben distribuirse aleatoriamente
- Revelan problemas del modelo

---

## 💡 Consejos Finales

1. **Siempre visualiza primero** - Los gráficos revelan patrones
2. **Verifica supuestos** - No asumas que se cumplen
3. **Analiza residuos** - Te dicen si el modelo es apropiado
4. **No extrapoles lejos** - Las predicciones fuera del rango son riesgosas
5. **Contexto importa** - Un R²=0.6 puede ser excelente o pésimo según el dominio
6. **Correlación ≠ Causación** - La regresión no prueba causalidad

---

**¡Has completado la teoría de Regresión Lineal Simple!** 🎉

Ahora estás listo para aplicar estos conceptos en la práctica. Recuerda: la regresión lineal es simple pero poderosa cuando se usa correctamente.

**Siguiente paso**: Practica con el notebook guiado para ver estos conceptos en acción.
