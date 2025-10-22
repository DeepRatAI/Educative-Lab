# Educative-Lab 🎓

[![CI Status](https://github.com/DeepRatAI/Educative-Lab/actions/workflows/ci.yml/badge.svg)](https://github.com/DeepRatAI/Educative-Lab/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.11+](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)

> Hub educativo modular para aprendizaje práctico de Computer Vision, Deep Learning y AI.

## 🎯 Propósito

**Educative-Lab** es un repositorio centralizado que contiene lecciones completas, autocontenidas y reproducibles sobre temas de visión por computadora e inteligencia artificial. Cada lección está diseñada para:

- ✅ Ejecutarse completamente en **CPU** (sin requisitos de GPU)
- ✅ Ser **reproducible** con dependencias mínimas
- ✅ Incluir **teoría + práctica** en formato notebook interactivo
- ✅ Mantener **autoría** y **licencias** originales

## 🚀 Quickstart

### Instalación

```bash
# Clonar el repositorio
git clone https://github.com/DeepRatAI/Educative-Lab.git
cd Educative-Lab

# Crear entorno virtual e instalar dependencias
python -m venv .venv
source .venv/bin/activate  # En Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

### Ejecutar lecciones

```bash
# Ejecutar tests de notebooks (verifica que todo funcione)
make test

# Exportar notebooks a HTML
make html

# Los resultados estarán en build/html/
```

### Navegar por las lecciones

Cada lección está en su propia carpeta dentro de `lessons/`:

```bash
cd lessons/01_yolov8_intro
jupyter notebook Yolov8_Detector.ipynb
```

## 📚 Índice de Lecciones

| # | Título | Descripción | Nivel | Autor |
|---|--------|-------------|-------|-------|
| 01 | [YOLOv8 Intro](lessons/01_yolov8_intro/) | Detección de objetos en video con YOLOv8 | Intermedio | [@DeepRatAI](https://github.com/DeepRatAI) |

> 💡 **Próximamente:** Más lecciones sobre segmentación, clasificación, pose estimation, y más.

## 📖 Contenido del Repositorio

```
Educative-Lab/
├── lessons/              # Lecciones individuales
│   ├── 01_yolov8_intro/  # Lección 1: YOLOv8 Detection
│   └── _template/        # Plantilla para nuevas lecciones
├── .github/              # CI/CD y templates
│   └── workflows/        # GitHub Actions
├── build/                # Artefactos generados (HTML, etc.)
├── README.md             # Este archivo
├── syllabus.md           # Programa completo del curso
├── requirements.txt      # Dependencias Python
├── Makefile              # Comandos útiles
└── LICENSE               # MIT License
```

## 🛠️ Comandos Útiles

```bash
make help    # Ver todos los comandos disponibles
make setup   # Configurar entorno desde cero
make test    # Ejecutar notebooks con nbconvert
make html    # Exportar notebooks a HTML
make clean   # Limpiar artefactos de build
```

## 🧪 CI/CD

El repositorio incluye integración continua que:

- ✅ Ejecuta todos los notebooks en CPU
- ✅ Verifica que no haya archivos >25MB
- ✅ Exporta notebooks a HTML como artefactos
- ✅ Timeout de 5 minutos por notebook

Ver [`.github/workflows/ci.yml`](.github/workflows/ci.yml) para detalles.

## 📝 Contribuir

¿Quieres agregar una nueva lección? 

1. Usa la plantilla en [`lessons/_template/`](lessons/_template/)
2. Asegúrate de que tu lección sea **CPU-only** y **reproducible**
3. Incluye `README.md`, `requirements.txt` y `LICENSE` si es diferente a MIT
4. Abre un PR siguiendo el [template](.github/PULL_REQUEST_TEMPLATE.md)

## 📄 Licencia

Este repositorio está bajo licencia [MIT](LICENSE). Cada lección individual puede tener su propia licencia (ver carpeta de la lección correspondiente).

## 👨‍💻 Autor

**DeepRatAI**
- GitHub: [@DeepRatAI](https://github.com/DeepRatAI)

---

⭐ Si este repositorio te resulta útil, ¡dale una estrella!
