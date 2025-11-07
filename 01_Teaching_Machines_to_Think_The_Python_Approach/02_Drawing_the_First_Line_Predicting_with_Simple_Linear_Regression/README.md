# 📊 Lección 02: Regresión Lineal Simple

**Módulo 1: Machine Learning with Python**

---

## 📋 Descripción

En esta lección aprenderás uno de los algoritmos fundamentales de Machine Learning: la **Regresión Lineal Simple**. Descubrirás cómo modelar relaciones lineales entre variables, entender la matemática detrás del algoritmo, y aplicarlo a problemas reales de predicción.

La regresión lineal es la base para entender algoritmos más complejos y es ampliamente utilizada en industrias como finanzas, inmobiliaria, marketing y ciencia de datos.

---

## 🎯 Objetivos de Aprendizaje

Al completar esta lección, serás capaz de:

1. **Comprender** qué es la regresión lineal y cuándo usarla
2. **Explicar** la matemática detrás del algoritmo (ecuación de la recta, mínimos cuadrados)
3. **Implementar** regresión lineal desde cero con NumPy
4. **Utilizar** Scikit-learn para entrenar modelos de regresión
5. **Interpretar** coeficientes, intercepto y métricas de evaluación
6. **Evaluar** modelos usando R², MSE, RMSE y MAE
7. **Visualizar** líneas de regresión y residuos
8. **Identificar** limitaciones y supuestos del modelo

---

## 📚 Contenido de la Lección

### 1. **Teoría** (`leccion_teorica.md`)

- ¿Qué es la regresión lineal?
- Ecuación de la recta: y = mx + b
- Método de mínimos cuadrados ordinarios (OLS)
- Supuestos de la regresión lineal
- Métricas de evaluación (R², MSE, RMSE, MAE)
- Interpretación de coeficientes
- Casos de uso en el mundo real

### 2. **Práctica Guiada** (`02_regresion_lineal_simple.ipynb`)

- Configuración del entorno
- Exploración de datos y visualización
- Implementación desde cero con NumPy
- Regresión lineal con Scikit-learn
- Evaluación del modelo
- Análisis de residuos
- Predicciones con nuevos datos
- Ejemplo completo: Predicción de salarios

### 3. **Ejercicios** (`ejercicios.ipynb`)

- Ejercicio 1: Predicción de precios de automóviles
- Ejercicio 2: Relación entre publicidad y ventas
- Ejercicio 3: Análisis de consumo de combustible
- Ejercicio 4: Predicción de calificaciones
- Ejercicio 5: Proyecto - Precios de viviendas

### 4. **Soluciones** (`soluciones.ipynb`)

- Soluciones completas con explicaciones
- Código comentado y optimizado
- Interpretación de resultados
- Mejores prácticas

---

## ⏱️ Duración Estimada

- **Teoría**: 60-75 minutos
- **Práctica guiada**: 90-120 minutos
- **Ejercicios**: 90-120 minutos
- **Total**: 4-5 horas

---

## 📋 Prerrequisitos

### Conocimientos Necesarios:

- ✅ Lección 01: Introducción a Machine Learning (completada)
- ✅ Python básico
- ✅ NumPy y Pandas fundamentales
- ✅ Matplotlib básico
- ✅ Álgebra básica (ecuaciones lineales)

### Bibliotecas Requeridas:

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score, mean_absolute_error
```

---

## 🚀 Cómo Usar esta Lección

### Orden Recomendado:

1. **📖 Lee la teoría** (`leccion_teorica.md`)

   - Entiende los conceptos fundamentales
   - Revisa la matemática con calma
   - Toma notas de los conceptos clave

2. **💻 Sigue la práctica guiada** (`02_regresion_lineal_simple.ipynb`)

   - Ejecuta cada celda paso a paso
   - Experimenta modificando valores
   - Observa cómo cambian los resultados

3. **✏️ Completa los ejercicios** (`ejercicios.ipynb`)

   - Intenta resolverlos sin ver las soluciones
   - Usa la teoría y práctica como referencia
   - Tómate tu tiempo para entender

4. **✅ Revisa las soluciones** (`soluciones.ipynb`)
   - Compara tus respuestas
   - Entiende enfoques alternativos
   - Aprende de las mejores prácticas

---

## 🔑 Conceptos Clave

| Concepto                       | Descripción                                                        |
| ------------------------------ | ------------------------------------------------------------------ |
| **Variable Independiente (X)** | Feature o predictor que usamos para hacer predicciones             |
| **Variable Dependiente (y)**   | Target o variable que queremos predecir                            |
| **Coeficiente (m)**            | Pendiente de la recta, indica cuánto cambia y por cada unidad de X |
| **Intercepto (b)**             | Punto donde la recta cruza el eje Y cuando X=0                     |
| **Residuos**                   | Diferencia entre valores reales y predichos                        |
| **R² (R-cuadrado)**            | Proporción de varianza explicada por el modelo (0-1)               |
| **MSE**                        | Error Cuadrático Medio - promedio de errores al cuadrado           |
| **RMSE**                       | Raíz del MSE - error en las mismas unidades que y                  |
| **MAE**                        | Error Absoluto Medio - promedio de errores absolutos               |

---

## 📊 Fórmulas Importantes

### Ecuación de la Recta:

```
y = mx + b
```

### Cálculo del Coeficiente (pendiente):

```
m = Σ[(xi - x̄)(yi - ȳ)] / Σ[(xi - x̄)²]
```

### Cálculo del Intercepto:

```
b = ȳ - m * x̄
```

### R² (Coeficiente de Determinación):

```
R² = 1 - (SS_res / SS_tot)
```

Donde:

- SS_res = Σ(yi - ŷi)² (suma de residuos al cuadrado)
- SS_tot = Σ(yi - ȳ)² (varianza total)

---

## 🛠️ Configuración en Google Colab

### Opción 1: Ejecutar en la Nube

1. Abre [Google Colab](https://colab.research.google.com/)
2. Sube el notebook o ábrelo desde GitHub
3. Ejecuta: `Runtime > Run all` o usa `Shift + Enter` celda por celda

### Opción 2: Conectar a GitHub

```python
# Clonar el repositorio (si está en GitHub)
!git clone https://github.com/TU_USUARIO/EducativeMaterial.git
%cd EducativeMaterial/lessons/Modulo_01_Machine_Learning_with_Python/02_Regresion_Lineal_Simple/
```

### Verificar Instalación:

```python
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

## 🎯 Criterios de Éxito

Al finalizar esta lección, deberías poder:

- [ ] Explicar qué es regresión lineal a un compañero
- [ ] Implementar regresión lineal desde cero
- [ ] Entrenar un modelo con Scikit-learn
- [ ] Interpretar el valor de R² correctamente
- [ ] Identificar si un modelo es bueno o malo
- [ ] Visualizar la línea de regresión
- [ ] Analizar residuos para detectar problemas
- [ ] Hacer predicciones con nuevos datos
- [ ] Explicar limitaciones del modelo

---

## 📈 Ejemplos del Mundo Real

Esta lección incluye ejemplos basados en:

1. **💰 Predicción de Salarios** - Experiencia → Salario
2. **🏠 Precios de Viviendas** - Tamaño → Precio
3. **🚗 Valor de Automóviles** - Antigüedad → Precio
4. **📺 Efectividad de Publicidad** - Inversión → Ventas
5. **⛽ Consumo de Combustible** - Peso del vehículo → Consumo

---

## 💡 Tips para el Éxito

### Durante la Teoría:

- 📝 Toma notas de las fórmulas importantes
- 🖊️ Dibuja gráficos para visualizar conceptos
- 🔄 Relaciona con ejemplos de tu vida diaria

### Durante la Práctica:

- 🎮 Experimenta cambiando parámetros
- 📊 Observa cómo cambian los gráficos
- 🐛 No temas cometer errores - aprende de ellos

### Durante los Ejercicios:

- ⏸️ Tómate descansos cada 30-45 minutos
- 🤔 Piensa antes de ver las soluciones
- 💬 Discute con compañeros si es posible

---

## ⚠️ Errores Comunes a Evitar

1. ❌ **No visualizar los datos primero** → Siempre explora con gráficos
2. ❌ **Ignorar los residuos** → Pueden revelar problemas del modelo
3. ❌ **Confiar ciegamente en R²** → Puede engañar con datos pequeños
4. ❌ **No verificar supuestos** → La regresión lineal tiene requisitos
5. ❌ **Extrapolar demasiado lejos** → Las predicciones fuera del rango son riesgosas
6. ❌ **Olvidar escalar/normalizar** → Importante cuando hay múltiples features

---

## 🔗 Recursos Adicionales

### Documentación Oficial:

- [Scikit-learn: Linear Regression](https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LinearRegression.html)
- [NumPy Documentation](https://numpy.org/doc/stable/)
- [Pandas User Guide](https://pandas.pydata.org/docs/user_guide/index.html)

### Tutoriales Recomendados:

- [Khan Academy: Linear Regression](https://www.khanacademy.org/math/statistics-probability/describing-relationships-quantitative-data/introduction-to-trend-lines/v/linear-regression-and-correlation-tutorial)
- [StatQuest: Linear Regression](https://www.youtube.com/watch?v=nk2CQITm_eo)

### Práctica Extra:

- [Kaggle: House Prices Competition](https://www.kaggle.com/c/house-prices-advanced-regression-techniques)
- [Google Colab Notebooks Gallery](https://colab.research.google.com/notebooks/)

---

## 🎓 Evaluación de Conocimientos

### Preguntas de Autoevaluación:

1. ¿Qué significa que R² = 0.85?
2. ¿Cuál es la diferencia entre MSE y RMSE?
3. ¿Qué indica un coeficiente negativo?
4. ¿Cuándo NO deberías usar regresión lineal?
5. ¿Qué son los residuos y por qué son importantes?

### Mini Quiz:

Responde mentalmente:

- Si X aumenta 5 unidades y m=3, ¿cuánto aumenta y?
- ¿R²=0.3 es un buen modelo?
- ¿Qué métrica prefieres para comparar modelos con diferentes escalas?

---

## 🚀 Próximos Pasos

Después de completar esta lección:

1. **Continúa con**: Lección 03 - Regresión Lineal Múltiple
2. **Practica más**: Busca datasets en Kaggle y aplica regresión lineal
3. **Profundiza**: Investiga sobre regularización (Ridge, Lasso)
4. **Comparte**: Explica lo aprendido a alguien más

---

## 📞 Soporte

Si tienes dudas:

- 💬 Revisa el material teórico nuevamente
- 🔍 Busca en la documentación oficial
- 👥 Pregunta en foros (Stack Overflow, Reddit r/learnmachinelearning)
- 📧 Consulta con tu instructor o compañeros

---

## ✅ Checklist de Progreso

Marca tu avance:

- [ ] Leí y entendí la teoría completa
- [ ] Completé el notebook de práctica guiada
- [ ] Ejecuté todos los ejemplos exitosamente
- [ ] Completé los 5 ejercicios
- [ ] Revisé las soluciones y entendí las diferencias
- [ ] Puedo explicar R² a alguien más
- [ ] Sé cuándo usar regresión lineal
- [ ] Puedo implementar regresión desde cero
- [ ] Entiendo cómo interpretar residuos
- [ ] Estoy listo para la siguiente lección

---

**¡Buena suerte con tu aprendizaje! 🎉**

_Recuerda: La regresión lineal es la base de muchos algoritmos avanzados. ¡Domínala bien!_ 💪
