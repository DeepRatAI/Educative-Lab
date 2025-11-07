# Lección Teórica: Introducción a Machine Learning

## 📖 Índice

1. [¿Qué es Machine Learning?](#1-qué-es-machine-learning)
2. [Historia y Evolución](#2-historia-y-evolución)
3. [Tipos de Machine Learning](#3-tipos-de-machine-learning)
4. [Conceptos Fundamentales](#4-conceptos-fundamentales)
5. [El Flujo de Trabajo en ML](#5-el-flujo-de-trabajo-en-ml)
6. [Aplicaciones en el Mundo Real](#6-aplicaciones-en-el-mundo-real)
7. [Herramientas y Ecosistema](#7-herramientas-y-ecosistema)

---

## 1. ¿Qué es Machine Learning?

### Definición

**Machine Learning (Aprendizaje Automático)** es un subcampo de la Inteligencia Artificial que permite a las computadoras **aprender de datos y experiencia** sin ser explícitamente programadas para cada tarea específica.

### Diferencia con la Programación Tradicional

#### Programación Tradicional:

```
Reglas + Datos → Programa → Respuestas
```

El programador define **explícitamente** todas las reglas.

**Ejemplo**: Para detectar spam, escribirías reglas como:

- "Si el email contiene 'GANA DINERO' → spam"
- "Si el remitente es desconocido Y tiene adjuntos → spam"

**Problema**: ¿Y si hay 1000 variaciones? ¿Y si los spammers cambian de estrategia?

#### Machine Learning:

```
Datos + Respuestas → Algoritmo de Aprendizaje → Modelo (Reglas aprendidas)
```

El modelo **descubre** las reglas de los datos.

**Ejemplo**: Le das miles de emails (spam y no-spam), y el modelo aprende los patrones por sí mismo.

### Analogía del Aprendizaje Humano

Piensa en cómo aprendiste a reconocer frutas cuando eras niño:

1. **Datos**: Viste muchas manzanas, naranjas, plátanos
2. **Etiquetas**: Tus padres te dijeron "esto es una manzana"
3. **Aprendizaje**: Tu cerebro encontró patrones (forma, color, tamaño)
4. **Predicción**: Ahora puedes identificar frutas nuevas

¡El Machine Learning funciona de forma similar!

---

## 2. Historia y Evolución

### Línea de Tiempo

```
1950s - Alan Turing: "¿Pueden las máquinas pensar?"
        Test de Turing

1957 - Perceptron (Frank Rosenblatt)
        Primera red neuronal

1960s-1970s - "Invierno de la IA"
               Expectativas no cumplidas, falta de datos

1980s - Resurgimiento con Backpropagation
        Redes neuronales multicapa

1990s - Support Vector Machines (SVM)
        Random Forests

2000s - Big Data + Computación en la nube
        Más datos = Mejores modelos

2012 - Deep Learning Revolution
        AlexNet gana ImageNet

2015-hoy - Explosión del ML
           TensorFlow, PyTorch, AutoML
           GPT, BERT, Diffusion Models
```

### ¿Por qué ahora?

Tres factores clave:

1. **Datos masivos**: Internet, sensores, IoT
2. **Poder computacional**: GPUs, TPUs, Cloud
3. **Algoritmos mejorados**: Deep Learning, Transfer Learning

---

## 3. Tipos de Machine Learning

### 3.1 Aprendizaje Supervisado (Supervised Learning)

**Definición**: El modelo aprende de **datos etiquetados** (con respuestas correctas).

**Analogía**: Como un estudiante que aprende con un profesor que le dice las respuestas correctas.

#### Tipos de problemas:

##### A) Regresión (Regression)

- **Objetivo**: Predecir un **valor numérico continuo**
- **Ejemplos**:
  - Predecir el precio de una casa ($150,000, $280,000...)
  - Estimar la temperatura de mañana (23.5°C, 18.2°C...)
  - Pronosticar ventas futuras ($50,000, $75,200...)

##### B) Clasificación (Classification)

- **Objetivo**: Predecir una **categoría o clase**
- **Ejemplos**:
  - Email es spam o no spam (2 clases - binaria)
  - Diagnóstico médico: saludable, gripe, COVID (múltiples clases)
  - Reconocimiento de dígitos: 0, 1, 2, ..., 9

#### Algoritmos comunes:

- Regresión Lineal
- Regresión Logística
- K-Nearest Neighbors (KNN)
- Support Vector Machines (SVM)
- Árboles de Decisión
- Random Forests
- Redes Neuronales

### 3.2 Aprendizaje No Supervisado (Unsupervised Learning)

**Definición**: El modelo aprende de **datos sin etiquetas** (sin respuestas).

**Analogía**: Como explorar un territorio desconocido y encontrar patrones por tu cuenta.

#### Tipos de problemas:

##### A) Clustering (Agrupamiento)

- **Objetivo**: Agrupar datos similares
- **Ejemplos**:
  - Segmentación de clientes (alto valor, medio, bajo)
  - Agrupar noticias por tema
  - Detección de comunidades en redes sociales

##### B) Reducción de Dimensionalidad

- **Objetivo**: Simplificar datos complejos manteniendo información importante
- **Ejemplos**:
  - Comprimir imágenes
  - Visualización de datos de alta dimensión
  - Feature engineering

##### C) Detección de Anomalías

- **Objetivo**: Encontrar datos atípicos o inusuales
- **Ejemplos**:
  - Fraude en transacciones
  - Fallas en equipos industriales
  - Intrusión en redes

#### Algoritmos comunes:

- K-Means
- DBSCAN
- PCA (Principal Component Analysis)
- Autoencoders
- Isolation Forest

### 3.3 Aprendizaje por Refuerzo (Reinforcement Learning)

**Definición**: El modelo aprende mediante **prueba y error**, recibiendo recompensas o penalizaciones.

**Analogía**: Como entrenar a un perro con premios.

#### Componentes:

- **Agente**: El modelo que aprende
- **Entorno**: El mundo donde opera
- **Acciones**: Lo que puede hacer
- **Recompensas**: Feedback positivo/negativo
- **Estado**: Situación actual

#### Ejemplos:

- Jugar ajedrez, Go, videojuegos
- Robots que aprenden a caminar
- Coches autónomos
- Trading algorítmico
- Optimización de recursos

---

## 4. Conceptos Fundamentales

### 4.1 Terminología Esencial

#### Features (Características/Variables)

**Variables de entrada** que describen los datos.

**Ejemplo - Predecir precio de casas**:

- Features: # habitaciones, m², ubicación, año construcción
- Representación: X = [habitaciones, m², ubicación, año]

#### Labels (Etiquetas)

**Variable objetivo** que queremos predecir.

**Ejemplo**:

- Label: precio de la casa
- Representación: y = precio

#### Dataset (Conjunto de Datos)

Colección de ejemplos para entrenar o evaluar.

```
Ejemplo de dataset de casas:

| Habitaciones | m²  | Año  | Precio (label) |
|-------------|-----|------|----------------|
| 3           | 120 | 2010 | $250,000       |
| 4           | 180 | 2015 | $380,000       |
| 2           | 80  | 2005 | $180,000       |
```

#### Modelo (Model)

Representación matemática que **aprende patrones** de los datos.

**Analogía**: Una fórmula matemática que relaciona features con labels.

Para regresión lineal:

```
precio = (coef₁ × habitaciones) + (coef₂ × m²) + (coef₃ × año) + intercepto
```

#### Entrenamiento (Training)

Proceso de **ajustar el modelo** para que aprenda de los datos.

El modelo intenta minimizar el error entre sus predicciones y los valores reales.

#### Predicción (Prediction/Inference)

Usar el modelo entrenado para **estimar valores** en datos nuevos.

```python
# Casa nueva: 3 habitaciones, 150 m², construida en 2020
precio_estimado = modelo.predict([3, 150, 2020])
# Resultado: $320,000
```

### 4.2 Datos de Entrenamiento vs. Prueba

#### ¿Por qué dividir los datos?

Imagina que estudias para un examen **memorizando las respuestas** sin entender.

- ✅ Sacas 100 en el mismo examen
- ❌ Fallas con preguntas nuevas

Lo mismo pasa con los modelos de ML.

#### División típica:

```
Dataset Completo (100%)
    ↓
    ├─ Datos de Entrenamiento (70-80%)
    │  → El modelo APRENDE de estos
    │
    ├─ Datos de Validación (10-15%) [Opcional]
    │  → Para ajustar hiperparámetros
    │
    └─ Datos de Prueba (10-20%)
       → Para EVALUAR el modelo final
       → ¡NUNCA usados en entrenamiento!
```

**Regla de oro**: El modelo NUNCA debe ver los datos de prueba durante el entrenamiento.

### 4.3 Overfitting vs. Underfitting

#### Underfitting (Subajuste)

**Problema**: El modelo es **demasiado simple** y no captura los patrones.

**Analogía**: Estudiar muy poco para el examen.

**Síntomas**:

- ❌ Mal desempeño en entrenamiento
- ❌ Mal desempeño en prueba

**Solución**:

- Usar un modelo más complejo
- Agregar más features
- Entrenar por más tiempo

#### Overfitting (Sobreajuste)

**Problema**: El modelo es **demasiado complejo** y memoriza el ruido.

**Analogía**: Memorizar las respuestas exactas sin entender.

**Síntomas**:

- ✅ Excelente desempeño en entrenamiento
- ❌ Mal desempeño en prueba

**Solución**:

- Usar un modelo más simple
- Regularización
- Más datos de entrenamiento
- Dropout (en redes neuronales)

#### El Balance Ideal

```
Complejidad del Modelo
    ↑
    │           Overfitting
    │              ╱
    │            ╱
    │  ★ Sweet Spot
    │          ╲
    │           ╲
    │         Underfitting
    └─────────────────────→ Error
      Alto            Bajo
```

---

## 5. El Flujo de Trabajo en ML

### Pipeline Completo

```
1. Definir el Problema
   ↓
2. Recolectar Datos
   ↓
3. Explorar y Entender los Datos (EDA)
   ↓
4. Preparar los Datos (Limpieza)
   ↓
5. Ingeniería de Features
   ↓
6. Elegir un Modelo
   ↓
7. Entrenar el Modelo
   ↓
8. Evaluar el Modelo
   ↓
9. Ajustar Hiperparámetros
   ↓
10. Desplegar el Modelo
    ↓
11. Monitorear y Mantener
```

### Desglose de Cada Paso

#### 1. Definir el Problema

- ¿Qué queremos predecir?
- ¿Es regresión o clasificación?
- ¿Qué métrica de éxito usaremos?

**Ejemplo**: "Queremos predecir si un cliente cancelará su suscripción (churn) el próximo mes."

#### 2. Recolectar Datos

- ¿Dónde están los datos?
- ¿Son suficientes?
- ¿Están actualizados?

**Fuentes**: Bases de datos, APIs, web scraping, sensores, encuestas

#### 3. Explorar y Entender los Datos (EDA)

- Visualizar distribuciones
- Buscar correlaciones
- Detectar valores atípicos
- Entender relaciones

**Herramientas**: Matplotlib, Seaborn, Pandas profiling

#### 4. Preparar los Datos

- Manejar valores faltantes
- Codificar variables categóricas
- Escalar/normalizar features
- Dividir en train/test

#### 5. Ingeniería de Features

- Crear nuevas features
- Seleccionar features relevantes
- Transformar features existentes

**Ejemplo**: De "fecha de nacimiento" → crear "edad"

#### 6. Elegir un Modelo

- Comenzar simple (baseline)
- Probar varios algoritmos
- Considerar el trade-off complejidad/interpretabilidad

#### 7. Entrenar el Modelo

```python
modelo.fit(X_train, y_train)
```

#### 8. Evaluar el Modelo

- Métricas de desempeño
- Validación cruzada
- Análisis de errores

#### 9. Ajustar Hiperparámetros

- Grid Search
- Random Search
- Optimización Bayesiana

#### 10. Desplegar el Modelo

- API REST
- Batch predictions
- Edge devices

#### 11. Monitorear y Mantener

- Detectar drift en datos
- Reentrenar periódicamente
- A/B testing

---

## 6. Aplicaciones en el Mundo Real

### 🏥 Salud

- **Diagnóstico médico**: Detectar enfermedades en imágenes (rayos X, resonancias)
- **Predicción de epidemias**: Modelar propagación de enfermedades
- **Medicina personalizada**: Tratamientos según genética del paciente
- **Detección temprana**: Cáncer, diabetes, enfermedades cardíacas

### 💰 Finanzas

- **Detección de fraude**: Transacciones sospechosas en tiempo real
- **Credit scoring**: Evaluar riesgo de préstamos
- **Trading algorítmico**: Decisiones automáticas de inversión
- **Predicción de precios**: Acciones, criptomonedas, materias primas

### 🛒 E-commerce y Marketing

- **Sistemas de recomendación**: "También te puede gustar..." (Netflix, Amazon)
- **Segmentación de clientes**: Grupos con comportamientos similares
- **Predicción de churn**: Identificar clientes en riesgo de irse
- **Optimización de precios**: Precio dinámico según demanda

### 🚗 Transporte

- **Coches autónomos**: Detección de objetos, toma de decisiones
- **Optimización de rutas**: Uber, Google Maps
- **Predicción de demanda**: Taxis, scooters compartidos
- **Mantenimiento predictivo**: Fallos antes de que ocurran

### 🎬 Entretenimiento

- **Recomendaciones**: Spotify, Netflix, YouTube
- **Generación de contenido**: Música, imágenes, texto con IA
- **Moderación de contenido**: Detectar spam, contenido inapropiado
- **Búsqueda inteligente**: Encontrar escenas específicas en videos

### 🏭 Industria

- **Control de calidad**: Detectar defectos en productos
- **Optimización de procesos**: Reducir consumo energético
- **Predicción de demanda**: Gestión de inventario
- **Robótica**: Brazos robóticos que aprenden tareas

### 🌾 Agricultura

- **Predicción de cosechas**: Rendimiento según clima y suelo
- **Detección de plagas**: Identificar enfermedades en plantas
- **Riego inteligente**: Optimizar uso de agua
- **Drones agrícolas**: Monitoreo automatizado de cultivos

---

## 7. Herramientas y Ecosistema

### 🐍 Python: El Lenguaje de ML

¿Por qué Python?

- ✅ Fácil de aprender
- ✅ Gran cantidad de bibliotecas
- ✅ Comunidad enorme
- ✅ Versatilidad (web, data science, ML, AI)

### 📚 Bibliotecas Fundamentales

#### NumPy

- Operaciones con arrays y matrices
- Base matemática para todo lo demás

```python
import numpy as np
array = np.array([1, 2, 3, 4, 5])
```

#### Pandas

- Manipulación y análisis de datos tabulares
- DataFrames (como Excel pero más poderoso)

```python
import pandas as pd
df = pd.read_csv('datos.csv')
```

#### Matplotlib / Seaborn

- Visualización de datos
- Gráficos, plots, histogramas

```python
import matplotlib.pyplot as plt
plt.plot(x, y)
plt.show()
```

#### Scikit-learn

- **LA biblioteca de ML** por excelencia
- Algoritmos, preprocesamiento, evaluación

```python
from sklearn.linear_model import LinearRegression
modelo = LinearRegression()
```

### 🚀 Plataformas de Desarrollo

#### Google Colab (¡Lo que usaremos!)

- ✅ Gratis
- ✅ GPUs incluidas
- ✅ No requiere instalación
- ✅ Integración con Google Drive
- ✅ Compartir notebooks fácilmente

#### Jupyter Notebooks

- Entorno interactivo
- Mezcla código, visualizaciones y texto
- Ideal para exploración y enseñanza

#### Otras herramientas:

- **Kaggle**: Competencias de ML y datasets
- **Hugging Face**: Modelos pre-entrenados
- **Weights & Biases**: Tracking de experimentos
- **MLflow**: Gestión del ciclo de vida de ML

---

## 📝 Resumen de Conceptos Clave

| Concepto             | Definición Breve                                            |
| -------------------- | ----------------------------------------------------------- |
| **Machine Learning** | Algoritmos que aprenden de datos sin programación explícita |
| **Supervisado**      | Aprendizaje con datos etiquetados                           |
| **No Supervisado**   | Aprendizaje sin etiquetas, busca patrones                   |
| **Regresión**        | Predecir valores numéricos continuos                        |
| **Clasificación**    | Predecir categorías discretas                               |
| **Features**         | Variables de entrada (X)                                    |
| **Labels**           | Variable objetivo (y)                                       |
| **Entrenamiento**    | Ajustar el modelo a los datos                               |
| **Overfitting**      | Modelo muy complejo, memoriza ruido                         |
| **Underfitting**     | Modelo muy simple, no captura patrones                      |

---

## 🎯 Puntos para Recordar

1. **ML ≠ Magia**: Es matemáticas + estadística + programación

2. **Datos son el rey**: Sin datos de calidad, no hay buenos modelos

3. **Comienza simple**: Usa modelos simples como baseline

4. **Divide tus datos**: Train/test es fundamental para evaluar correctamente

5. **Visualiza siempre**: Los gráficos revelan patrones ocultos

6. **Itera**: ML es un proceso iterativo de mejora continua

7. **No existe el modelo perfecto**: Cada problema requiere su enfoque

8. **Interpreta los resultados**: Un modelo preciso que no entiendes no sirve de mucho

---

## 🔜 Próximos Pasos

Ahora que comprendes la teoría, es momento de **poner manos a la obra**:

1. ✅ Completa el notebook de práctica guiada
2. ✅ Resuelve los ejercicios
3. ✅ Experimenta con los ejemplos
4. ✅ Prepárate para la siguiente lección: **Regresión Lineal Simple**

---

**¡Felicitaciones por completar la parte teórica! 🎉**

Recuerda: El ML se aprende haciendo. La teoría es importante, pero la práctica es esencial.
