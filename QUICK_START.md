# 🚀 Quick Start Guide / Guía de Inicio Rápido

<p align="center">
  <img src="https://img.shields.io/badge/Time%20to%20Complete-15%20min-brightgreen?style=for-the-badge" alt="Time">
  <img src="https://img.shields.io/badge/Difficulty-Beginner-blue?style=for-the-badge" alt="Difficulty">
</p>

---

## 🇬🇧 English Version

### Welcome to Building Intelligence!

This guide will help you get started with the program in less than 15 minutes. By the end, you'll have your environment ready and will run your first AI notebook.

---

### 📋 Prerequisites Check

Before starting, ensure you have:

- ✅ **Google Account** (for Google Colab - 100% free)
- ✅ **Basic Python knowledge** (variables, functions, loops)
- ✅ **GitHub account** (optional, for saving your work)
- ✅ **Modern web browser** (Chrome, Firefox, Safari, Edge)

**No GPU required!** All notebooks run on Google Colab's free tier.

---

### 🎯 Three Paths to Get Started

#### **Option 1: Google Colab (Recommended - Zero Setup)**

**Perfect for:** Beginners, no local installation needed

1. **Navigate to Module 01:**

   - Go to `lessons/Modulo_01_Machine_Learning_with_Python/Leccion_01_Introduccion_al_ML/`

2. **Open any notebook:**

   - Click on `01_introduccion_ml.ipynb`

3. **Open in Colab:**

   - Click the "Open in Colab" badge at the top of the notebook
   - Or manually: Go to [Google Colab](https://colab.research.google.com/) → File → Open Notebook → GitHub → Paste the notebook URL

4. **Run your first cell:**

   ```python
   # Press Shift + Enter to run
   print("Hello, AI World! 🤖")
   ```

5. **Save your work (optional):**
   - File → Save a copy in Drive
   - Or File → Download → Download .ipynb

**That's it!** You're ready to learn.

---

#### **Option 2: Local Jupyter Notebook**

**Perfect for:** Users who prefer working offline

1. **Clone the repository:**

   ```bash
   git clone https://github.com/DeepRatAI/EducativeMaterial.git
   cd EducativeMaterial
   ```

2. **Create virtual environment (recommended):**

   ```bash
   python -m venv venv

   # Activate (Windows):
   venv\Scripts\activate

   # Activate (Mac/Linux):
   source venv/bin/activate
   ```

3. **Install dependencies:**

   ```bash
   pip install jupyter numpy pandas scikit-learn matplotlib seaborn
   ```

4. **Launch Jupyter:**

   ```bash
   jupyter notebook
   ```

5. **Navigate to Module 01 and start learning!**

---

#### **Option 3: VS Code + Jupyter Extension**

**Perfect for:** Developers who live in VS Code

1. **Install VS Code extensions:**

   - Python (Microsoft)
   - Jupyter (Microsoft)
   - GitHub Copilot (optional, but helpful)

2. **Clone the repository:**

   - `Ctrl+Shift+P` → "Git: Clone" → Paste repository URL

3. **Select Python interpreter:**

   - `Ctrl+Shift+P` → "Python: Select Interpreter"
   - Choose Python 3.10+ (create venv if needed)

4. **Open a notebook:**
   - Navigate to `lessons/Modulo_01.../Leccion_01.../01_introduccion_ml.ipynb`
   - Click on any code cell and press `Shift+Enter` to run

---

### 📚 Understanding the Repository Structure

```
EducativeMaterial/
├── lessons/                          # All course modules
│   ├── Modulo_01_Machine_Learning_with_Python/
│   │   ├── Leccion_01_Introduccion_al_ML/
│   │   │   ├── README.md            # Lesson objectives
│   │   │   ├── leccion_teorica.md   # Theory content
│   │   │   ├── 01_introduccion_ml.ipynb      # Main notebook
│   │   │   ├── ejercicios.ipynb     # Practice exercises
│   │   │   └── soluciones.ipynb     # Solutions (try first!)
│   │   ├── Leccion_02_Regresion_Lineal/
│   │   └── ...
│   ├── Modulo_02.../
│   └── ...
├── Modulo_01_Material/              # Additional resources
├── SYLLABUS.md                      # Complete course syllabus
├── QUICK_START.md                   # This file!
└── README.md                        # Main introduction
```

**How to use each lesson:**

1. **Start with `README.md`** → Understand objectives and prerequisites
2. **Read `leccion_teorica.md`** → Learn the theory (10-15 min)
3. **Work through main notebook** (`01_*.ipynb`) → Hands-on practice (30-45 min)
4. **Try `ejercicios.ipynb`** → Test your understanding (30-45 min)
5. **Check `soluciones.ipynb`** → Review solutions (only after trying!)

---

### 🎓 Your First Lesson Walkthrough

Let's complete **Module 01 - Lesson 01** together:

1. **Open the lesson:**

   - Path: `lessons/Modulo_01_Machine_Learning_with_Python/Leccion_01_Introduccion_al_ML/`

2. **Read the README:**

   - Understand what you'll learn
   - Check if you meet prerequisites

3. **Study the theory:**

   - Open `leccion_teorica.md`
   - Read about ML fundamentals (15 min)

4. **Run the main notebook:**

   - Open `01_introduccion_ml.ipynb` in Colab
   - Execute cells one by one (Shift+Enter)
   - Read explanations between code cells
   - Modify parameters to experiment!

5. **Practice with exercises:**

   - Open `ejercicios.ipynb`
   - Try solving without looking at solutions
   - Take your time!

6. **Review solutions:**
   - Open `soluciones.ipynb`
   - Compare your approach
   - Learn alternative solutions

**Congratulations!** 🎉 You've completed your first AI lesson.

---

### 🛠️ Common Issues & Solutions

#### **Issue 1: "Module not found" error in Colab**

**Solution:** Install the package in the notebook:

```python
!pip install package-name
```

#### **Issue 2: GPU not available in Colab**

**Solution:** Enable GPU:

- Runtime → Change runtime type → Hardware accelerator → GPU → Save

#### **Issue 3: Notebook takes too long to run**

**Solution:**

- Check if you're using GPU when needed (see Issue 2)
- Reduce dataset size for testing
- Use smaller model parameters initially

#### **Issue 4: Can't save changes in Colab**

**Solution:**

- File → Save a copy in Drive (creates your own editable copy)
- Or download: File → Download → Download .ipynb

#### **Issue 5: Code works in Colab but not locally**

**Solution:**

- Check Python version (needs 3.10+)
- Install all dependencies: `pip install -r requirements.txt` (if available)
- Check if you activated your virtual environment

---

### 📖 Learning Path Recommendations

**If you're a complete beginner:**

- Start with Module 01, Lesson 01
- Spend 1-2 weeks on each module
- Don't skip exercises!
- Join discussions on GitHub Issues

**If you have ML experience:**

- Review Module 01 quickly (1-2 days)
- Focus on Modules 02-03 (Keras/TensorFlow)
- Jump to Module 04 for PyTorch

**If you want to focus on GenAI:**

- Complete Modules 01-02 (fundamentals, 2 weeks)
- Skim Modules 03-06 (understand architectures, 2 weeks)
- Deep dive Modules 07-15 (GenAI, LLMs, RAG, Agents)

---

### 🎯 Success Tips

1. **Consistency > Intensity:** 1 hour daily beats 7 hours once a week
2. **Code, don't just read:** Type code yourself, don't copy-paste
3. **Experiment:** Change parameters, break things, learn from errors
4. **Document your learning:** Keep notes, create your own notebooks
5. **Join the community:** Star the repo, open issues, discuss concepts

---

### 📚 Recommended Study Schedule

**Full-Time (40h/week):**

- Complete program in 6 months
- See [SYLLABUS.md](SYLLABUS.md) for detailed timeline

**Part-Time (15h/week):**

- Complete program in 9 months
- Focus on quality over speed

**Flexible (10h/week):**

- Complete program in 12 months
- Perfect for working professionals

---

### 🆘 Need Help?

- 📖 **Check the SYLLABUS:** [SYLLABUS.md](SYLLABUS.md) has comprehensive FAQ
- 💬 **GitHub Issues:** Ask questions, report bugs
- 🌐 **Website:** [deeprat.tech](https://deeprat.tech)
- 💼 **LinkedIn:** [Gonzalo Luis Romero](https://www.linkedin.com/in/gonzalo-luis-romero-b9b5b4355)

---

### ✅ Checklist: Are You Ready?

Before moving to your first lesson, ensure:

- [ ] I have a Google account for Colab (or local Jupyter setup)
- [ ] I can run a simple Python cell successfully
- [ ] I understand the repository structure
- [ ] I know how to access lessons, exercises, and solutions
- [ ] I've read the learning path recommendations
- [ ] I'm ready to code and experiment!

**All checked?** → **[Start Module 01!](lessons/Modulo_01_Machine_Learning_with_Python/)**

---

---

## 🇪🇸 Versión en Español

### ¡Bienvenido a Building Intelligence!

Esta guía te ayudará a comenzar con el programa en menos de 15 minutos. Al final, tendrás tu entorno listo y ejecutarás tu primer notebook de IA.

---

### 📋 Verificación de Prerequisitos

Antes de comenzar, asegúrate de tener:

- ✅ **Cuenta de Google** (para Google Colab - 100% gratis)
- ✅ **Conocimientos básicos de Python** (variables, funciones, bucles)
- ✅ **Cuenta de GitHub** (opcional, para guardar tu trabajo)
- ✅ **Navegador web moderno** (Chrome, Firefox, Safari, Edge)

**¡No se requiere GPU!** Todos los notebooks funcionan en la versión gratuita de Google Colab.

---

### 🎯 Tres Caminos para Comenzar

#### **Opción 1: Google Colab (Recomendado - Configuración Cero)**

**Perfecto para:** Principiantes, sin instalación local necesaria

1. **Navega al Módulo 01:**

   - Ve a `lessons/Modulo_01_Machine_Learning_with_Python/Leccion_01_Introduccion_al_ML/`

2. **Abre cualquier notebook:**

   - Haz clic en `01_introduccion_ml.ipynb`

3. **Abre en Colab:**

   - Haz clic en el badge "Open in Colab" en la parte superior del notebook
   - O manualmente: Ve a [Google Colab](https://colab.research.google.com/) → Archivo → Abrir notebook → GitHub → Pega la URL del notebook

4. **Ejecuta tu primera celda:**

   ```python
   # Presiona Shift + Enter para ejecutar
   print("¡Hola, Mundo de la IA! 🤖")
   ```

5. **Guarda tu trabajo (opcional):**
   - Archivo → Guardar una copia en Drive
   - O Archivo → Descargar → Descargar .ipynb

**¡Eso es todo!** Estás listo para aprender.

---

#### **Opción 2: Jupyter Notebook Local**

**Perfecto para:** Usuarios que prefieren trabajar sin conexión

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/DeepRatAI/EducativeMaterial.git
   cd EducativeMaterial
   ```

2. **Crea entorno virtual (recomendado):**

   ```bash
   python -m venv venv

   # Activar (Windows):
   venv\Scripts\activate

   # Activar (Mac/Linux):
   source venv/bin/activate
   ```

3. **Instala dependencias:**

   ```bash
   pip install jupyter numpy pandas scikit-learn matplotlib seaborn
   ```

4. **Lanza Jupyter:**

   ```bash
   jupyter notebook
   ```

5. **¡Navega al Módulo 01 y comienza a aprender!**

---

#### **Opción 3: VS Code + Extensión Jupyter**

**Perfecto para:** Desarrolladores que viven en VS Code

1. **Instala extensiones de VS Code:**

   - Python (Microsoft)
   - Jupyter (Microsoft)
   - GitHub Copilot (opcional, pero útil)

2. **Clona el repositorio:**

   - `Ctrl+Shift+P` → "Git: Clone" → Pega la URL del repositorio

3. **Selecciona intérprete de Python:**

   - `Ctrl+Shift+P` → "Python: Select Interpreter"
   - Elige Python 3.10+ (crea venv si es necesario)

4. **Abre un notebook:**
   - Navega a `lessons/Modulo_01.../Leccion_01.../01_introduccion_ml.ipynb`
   - Haz clic en cualquier celda de código y presiona `Shift+Enter` para ejecutar

---

### 📚 Entendiendo la Estructura del Repositorio

```
EducativeMaterial/
├── lessons/                          # Todos los módulos del curso
│   ├── Modulo_01_Machine_Learning_with_Python/
│   │   ├── Leccion_01_Introduccion_al_ML/
│   │   │   ├── README.md            # Objetivos de la lección
│   │   │   ├── leccion_teorica.md   # Contenido teórico
│   │   │   ├── 01_introduccion_ml.ipynb      # Notebook principal
│   │   │   ├── ejercicios.ipynb     # Ejercicios prácticos
│   │   │   └── soluciones.ipynb     # Soluciones (¡intenta primero!)
│   │   ├── Leccion_02_Regresion_Lineal/
│   │   └── ...
│   ├── Modulo_02.../
│   └── ...
├── Modulo_01_Material/              # Recursos adicionales
├── SYLLABUS.md                      # Syllabus completo del curso
├── QUICK_START.md                   # ¡Este archivo!
└── README.md                        # Introducción principal
```

**Cómo usar cada lección:**

1. **Comienza con `README.md`** → Entiende objetivos y prerequisitos
2. **Lee `leccion_teorica.md`** → Aprende la teoría (10-15 min)
3. **Trabaja en el notebook principal** (`01_*.ipynb`) → Práctica hands-on (30-45 min)
4. **Intenta `ejercicios.ipynb`** → Pon a prueba tu comprensión (30-45 min)
5. **Revisa `soluciones.ipynb`** → Revisa soluciones (¡solo después de intentar!)

---

### 🎓 Recorrido de Tu Primera Lección

Completemos **Módulo 01 - Lección 01** juntos:

1. **Abre la lección:**

   - Ruta: `lessons/Modulo_01_Machine_Learning_with_Python/Leccion_01_Introduccion_al_ML/`

2. **Lee el README:**

   - Entiende qué aprenderás
   - Verifica si cumples con los prerequisitos

3. **Estudia la teoría:**

   - Abre `leccion_teorica.md`
   - Lee sobre fundamentos de ML (15 min)

4. **Ejecuta el notebook principal:**

   - Abre `01_introduccion_ml.ipynb` en Colab
   - Ejecuta las celdas una por una (Shift+Enter)
   - Lee las explicaciones entre celdas de código
   - ¡Modifica parámetros para experimentar!

5. **Practica con ejercicios:**

   - Abre `ejercicios.ipynb`
   - Intenta resolver sin mirar las soluciones
   - ¡Tómate tu tiempo!

6. **Revisa soluciones:**
   - Abre `soluciones.ipynb`
   - Compara tu enfoque
   - Aprende soluciones alternativas

**¡Felicitaciones!** 🎉 Has completado tu primera lección de IA.

---

### 🛠️ Problemas Comunes y Soluciones

#### **Problema 1: Error "Module not found" en Colab**

**Solución:** Instala el paquete en el notebook:

```python
!pip install nombre-del-paquete
```

#### **Problema 2: GPU no disponible en Colab**

**Solución:** Habilita GPU:

- Entorno de ejecución → Cambiar tipo de entorno → Acelerador por hardware → GPU → Guardar

#### **Problema 3: El notebook tarda mucho en ejecutarse**

**Solución:**

- Verifica que estés usando GPU cuando sea necesario (ver Problema 2)
- Reduce el tamaño del dataset para pruebas
- Usa parámetros de modelo más pequeños inicialmente

#### **Problema 4: No puedo guardar cambios en Colab**

**Solución:**

- Archivo → Guardar una copia en Drive (crea tu propia copia editable)
- O descargar: Archivo → Descargar → Descargar .ipynb

#### **Problema 5: El código funciona en Colab pero no localmente**

**Solución:**

- Verifica la versión de Python (necesita 3.10+)
- Instala todas las dependencias: `pip install -r requirements.txt` (si está disponible)
- Verifica que hayas activado tu entorno virtual

---

### 📖 Recomendaciones de Ruta de Aprendizaje

**Si eres principiante completo:**

- Comienza con Módulo 01, Lección 01
- Dedica 1-2 semanas por módulo
- ¡No te saltes ejercicios!
- Únete a discusiones en GitHub Issues

**Si tienes experiencia en ML:**

- Revisa Módulo 01 rápidamente (1-2 días)
- Enfócate en Módulos 02-03 (Keras/TensorFlow)
- Salta al Módulo 04 para PyTorch

**Si quieres enfocarte en GenAI:**

- Completa Módulos 01-02 (fundamentos, 2 semanas)
- Revisa Módulos 03-06 (entiende arquitecturas, 2 semanas)
- Profundiza Módulos 07-15 (GenAI, LLMs, RAG, Agents)

---

### 🎯 Consejos para el Éxito

1. **Consistencia > Intensidad:** 1 hora diaria supera 7 horas una vez por semana
2. **Codifica, no solo leas:** Escribe el código tú mismo, no copies y pegues
3. **Experimenta:** Cambia parámetros, rompe cosas, aprende de los errores
4. **Documenta tu aprendizaje:** Toma notas, crea tus propios notebooks
5. **Únete a la comunidad:** Dale estrella al repo, abre issues, discute conceptos

---

### 📚 Cronograma de Estudio Recomendado

**Tiempo Completo (40h/semana):**

- Completa el programa en 6 meses
- Ver [SYLLABUS.md](SYLLABUS.md) para cronograma detallado

**Medio Tiempo (15h/semana):**

- Completa el programa en 9 meses
- Enfócate en calidad sobre velocidad

**Flexible (10h/semana):**

- Completa el programa en 12 meses
- Perfecto para profesionales que trabajan

---

### 🆘 ¿Necesitas Ayuda?

- 📖 **Revisa el SYLLABUS:** [SYLLABUS.md](SYLLABUS.md) tiene FAQ completo
- 💬 **GitHub Issues:** Haz preguntas, reporta bugs
- 🌐 **Sitio Web:** [deeprat.tech](https://deeprat.tech)
- 💼 **LinkedIn:** [Gonzalo Luis Romero](https://www.linkedin.com/in/gonzalo-luis-romero-b9b5b4355)

---

### ✅ Checklist: ¿Estás Listo?

Antes de pasar a tu primera lección, asegúrate:

- [ ] Tengo cuenta de Google para Colab (o configuración local de Jupyter)
- [ ] Puedo ejecutar una celda simple de Python exitosamente
- [ ] Entiendo la estructura del repositorio
- [ ] Sé cómo acceder a lecciones, ejercicios y soluciones
- [ ] He leído las recomendaciones de ruta de aprendizaje
- [ ] ¡Estoy listo para codificar y experimentar!

**¿Todo marcado?** → **[¡Comienza el Módulo 01!](lessons/Modulo_01_Machine_Learning_with_Python/)**

---

## 🤝 Contributing / Contribuciones

Found an issue? Want to improve a lesson? Contributions are welcome!

¿Encontraste un problema? ¿Quieres mejorar una lección? ¡Las contribuciones son bienvenidas!

1. Fork the repository / Haz fork del repositorio
2. Create your feature branch / Crea tu rama de características
3. Commit your changes / Haz commit de tus cambios
4. Push to the branch / Haz push a la rama
5. Open a Pull Request / Abre un Pull Request

---

## 📜 License / Licencia

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

---

<p align="center">
  <strong>Happy Learning! / ¡Feliz Aprendizaje! 🚀🤖</strong><br>
  <em>"From models to minds — making intelligence open again."</em><br>
  <em>"De los modelos a las mentes — hagamos que la inteligencia vuelva a ser abierta."</em>
</p>
