# Educative-Lab 🎓

[![CI Status](https://github.com/DeepRatAI/Educative-Lab/actions/workflows/ci.yml/badge.svg)](https://github.com/DeepRatAI/Educative-Lab/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.11+](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)

> Hub educativo modular para aprendizaje práctico de Computer Vision, Deep Learning y AI.

## 🎯 Propósito

**Educative-Lab** es un repositorio centralizado que contiene lecciones completas, autocontenidas y reproducibles sobre temas de visión por computadora e inteligencia artificial. Cada lección está diseñada para:

- ✅ Ejecutarse en **Google Colab** (entorno gratuito con GPU opcional)
- ✅ Ser **reproducible** con dependencias mínimas
- ✅ Incluir **teoría + práctica** en formato notebook interactivo
- ✅ Mantener **autoría** y **licencias** originales

## 🚀 Quickstart

### Opción 1: Google Colab (Recomendado)

Las lecciones están optimizadas para ejecutarse en **Google Colab**:

1. Navega a la lección deseada en `lessons/`
2. Abre el notebook (`.ipynb`)
3. Haz clic en el botón "Open in Colab" o copia el contenido
4. Ejecuta las celdas en Colab

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/DeepRatAI/Educative-Lab/blob/main/lessons/01_yolov8_intro/Yolov8_Detector.ipynb)

### Opción 2: Desarrollo Local

```bash
# Clonar el repositorio
git clone https://github.com/DeepRatAI/Educative-Lab.git
cd Educative-Lab

# Crear entorno virtual e instalar dependencias
python -m venv .venv
source .venv/bin/activate  # En Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

### Validar notebooks localmente

```bash
# Validar estructura de notebooks
make test

# Exportar notebooks a HTML para visualización
make html

# Los resultados estarán en build/html/
```

### Navegar por las lecciones

Cada lección está en su propia carpeta dentro de `lessons/`:

```bash
cd lessons/01_yolov8_intro
# Ver README.md para instrucciones específicas de la lección
```

## 📚 Índice de Lecciones

| #   | Título                                   | Descripción                              | Nivel      | Plataforma    | Autor                                      |
| --- | ---------------------------------------- | ---------------------------------------- | ---------- | ------------- | ------------------------------------------ |
| 01  | [YOLOv8 Intro](lessons/01_yolov8_intro/) | Detección de objetos en video con YOLOv8 | Intermedio | Google Colab  | [@DeepRatAI](https://github.com/DeepRatAI) |

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
make test    # Validar estructura de notebooks
make html    # Exportar notebooks a HTML
make clean   # Limpiar artefactos de build
```

## 🧪 CI/CD

El repositorio incluye integración continua que:

- ✅ Valida estructura de notebooks
- ✅ Verifica que no haya archivos >25MB
- ✅ Exporta notebooks a HTML como artefactos
- ✅ Compatible con notebooks de Google Colab

> **Nota:** Los notebooks no se ejecutan en CI ya que están diseñados para Google Colab con dependencias específicas.

Ver [`.github/workflows/ci.yml`](.github/workflows/ci.yml) para detalles.

## 📝 Contribuir

¿Quieres agregar una nueva lección?

1. Usa la plantilla en [`lessons/_template/`](lessons/_template/)
2. Las lecciones pueden ser para **Google Colab** o **locales** (especifica en README)
3. Incluye `README.md`, `requirements.txt` y `LICENSE` si es diferente a MIT
4. Agrega badge "Open in Colab" si aplica
5. Abre un PR siguiendo el [template](.github/PULL_REQUEST_TEMPLATE.md)

## 📄 Licencia

Este repositorio está bajo licencia [MIT](LICENSE). Cada lección individual puede tener su propia licencia (ver carpeta de la lección correspondiente).

## 👨‍💻 Autor

**DeepRatAI**

- GitHub: [@DeepRatAI](https://github.com/DeepRatAI)

---

⭐ Si este repositorio te resulta útil, ¡dale una estrella!
