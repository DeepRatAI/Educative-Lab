# Syllabus - Educative-Lab 📋

## Descripción General

Este es un hub educativo modular diseñado para el aprendizaje práctico de Computer Vision, Deep Learning y AI. Las lecciones están optimizadas para ejecutarse en **Google Colab**, aprovechando el entorno gratuito con GPU opcional.

---

## 📚 Lecciones Disponibles

### 01. YOLOv8 Intro - Detección de Objetos en Video

**Ruta:** `lessons/01_yolov8_intro/`  
**Autor:** [@DeepRatAI](https://github.com/DeepRatAI)  
**Nivel:** Intermedio  
**Duración estimada:** 2-3 horas  
**Plataforma:** Google Colab

**Objetivos de aprendizaje:**

- Comprender los fundamentos de detección de objetos con YOLOv8
- Aplicar YOLOv8 para detección en video
- Visualizar y analizar resultados de detección
- Trabajar con modelos pre-entrenados

**Requisitos previos:**

- Python básico
- Conocimientos básicos de Computer Vision
- Cuenta de Google (para usar Colab)
- Familiaridad con NumPy y OpenCV (opcional)

**Contenido:**

- Introducción a YOLO (You Only Look Once)
- Configuración del entorno en Colab
- Carga y uso de modelos YOLOv8
- Procesamiento de video frame por frame
- Visualización de detecciones

**Recursos:**

- 📓 Notebook: `Yolov8_Detector.ipynb` (diseñado para Colab)
- 📹 Video de ejemplo: `walk_1.mp4`
- 📦 Dependencias: Ver `requirements.txt` en la lección
- 🔗 [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/DeepRatAI/Educative-Lab/blob/main/lessons/01_yolov8_intro/Yolov8_Detector.ipynb)

---

## 🔮 Lecciones Futuras (Planificadas)

### 02. Image Classification con Transfer Learning

> **Estado:** En planificación  
> Clasificación de imágenes usando modelos pre-entrenados (ResNet, EfficientNet)

### 03. Segmentación Semántica

> **Estado:** En planificación  
> Segmentación pixel-wise con U-Net y Mask R-CNN

### 04. Pose Estimation

> **Estado:** En planificación  
> Estimación de poses humanas con MediaPipe y YOLO-Pose

### 05. Object Tracking

> **Estado:** En planificación  
> Seguimiento de objetos en video (DeepSORT, ByteTrack)

### 06. GANs Fundamentals

> **Estado:** En planificación  
> Introducción a Generative Adversarial Networks

---

## 🎓 Estructura de Cada Lección

Cada lección sigue esta estructura estándar:

```
lessons/XX_lesson_name/
├── README.md              # Descripción y objetivos
├── notebook.ipynb         # Notebook principal
├── requirements.txt       # Dependencias específicas
├── assets/                # Imágenes, videos, etc.
├── data/                  # Datos de ejemplo (si aplica)
└── LICENSE                # Licencia (si difiere de MIT)
```

---

## 🎯 Metodología de Aprendizaje

Cada lección incluye:

1. **Teoría:** Conceptos fundamentales explicados de forma clara
2. **Práctica:** Código ejecutable con ejemplos reales
3. **Ejercicios:** Desafíos opcionales para profundizar
4. **Recursos:** Links a papers, documentación y tutoriales externos

---

## 📊 Niveles de Dificultad

- **🟢 Principiante:** Requiere solo conocimientos básicos de Python
- **🟡 Intermedio:** Requiere experiencia con ML/CV básico
- **🔴 Avanzado:** Requiere conocimiento profundo de arquitecturas y matemáticas

---

## ⚙️ Requisitos Técnicos Generales

- **Python:** 3.11 o superior
- **Plataforma:** Google Colab (recomendado) o local
- **Cuenta Google:** Para acceder a Google Colab
- **RAM:** 8GB mínimo local (Colab provee recursos)
- **Espacio en disco:** Varía por lección (~500MB típico)

---

## 🤝 Contribuciones

Si quieres proponer una nueva lección:

1. Revisa la plantilla en `lessons/_template/`
2. Las lecciones pueden ser para **Google Colab** o **ejecución local**
3. Incluye documentación clara y ejemplos prácticos
4. Si es para Colab, agrega el badge "Open in Colab"
5. Abre un issue con tu propuesta antes de empezar

---

## 📧 Contacto

¿Preguntas o sugerencias? Abre un [issue](https://github.com/DeepRatAI/Educative-Lab/issues) en GitHub.

---

**Última actualización:** Octubre 2025
