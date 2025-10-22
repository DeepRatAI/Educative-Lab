## 📋 Descripción

[Breve descripción de los cambios realizados]

## 🎯 Tipo de Cambio

- [ ] 🐛 Bug fix (cambio que corrige un error)
- [ ] ✨ Nueva lección
- [ ] 📝 Actualización de documentación
- [ ] ♻️ Refactorización (sin cambios funcionales)
- [ ] 🚀 Nueva feature
- [ ] ⚡ Mejora de performance
- [ ] 🧪 Agregar o actualizar tests

## 🔗 Issues Relacionados

Fixes #(issue)
Relates to #(issue)

## 📝 Checklist de Pre-Merge

### General
- [ ] He leído el [CONTRIBUTING.md](CONTRIBUTING.md) (si existe)
- [ ] Mi código sigue el estilo del proyecto
- [ ] He realizado self-review de mi código
- [ ] He comentado mi código en áreas difíciles de entender

### Testing
- [ ] ✅ CI está en verde (todos los tests pasan)
- [ ] He probado mi código localmente con `make test`
- [ ] He verificado que los notebooks se ejecutan sin errores
- [ ] He testeado en CPU-only (sin dependencias de GPU)

### Archivos y Tamaño
- [ ] 📦 No hay archivos >25MB en este PR
- [ ] He agregado archivos grandes al `.gitignore` si es necesario
- [ ] Los datasets se descargan bajo demanda (no están en el repo)

### Documentación
- [ ] 📚 He actualizado el README.md si es necesario
- [ ] He actualizado el syllabus.md con la nueva lección (si aplica)
- [ ] He incluido un README.md en la carpeta de la lección
- [ ] He documentado las dependencias en requirements.txt

### Lecciones (si aplica)
- [ ] La lección es completamente reproducible en CPU
- [ ] He incluido objetivos de aprendizaje claros
- [ ] He agregado ejemplos prácticos
- [ ] He incluido ejercicios (opcional pero recomendado)
- [ ] He respetado las licencias de contenido de terceros
- [ ] He incluido LICENSE en la carpeta si difiere de MIT

## 🧪 Evidencia de Testing

### Ejecución local
```bash
# Pega aquí la salida de `make test`
```

### Notebooks ejecutados
- [ ] `lessons/01_yolov8_intro/Yolov8_Detector.ipynb` ✅
- [ ] [Agregar más si aplica]

### Screenshots (opcional)
[Si has hecho cambios visuales, agrega capturas de pantalla]

## 📊 Archivos Modificados

- Lista breve de archivos principales modificados
- Y su propósito

## 🔄 Cómo Probar este PR

```bash
# Instrucciones paso a paso para probar este PR
git checkout feature/tu-branch
pip install -r requirements.txt
make test
```

## 💬 Notas Adicionales

[Cualquier información adicional que los reviewers deberían saber]

## 📸 Screenshots/Videos (Opcional)

[Si aplica, agrega evidencia visual de los cambios]

---

## ✅ Review Checklist (para Reviewers)

- [ ] El código es claro y mantenible
- [ ] Los notebooks se ejecutan correctamente
- [ ] La documentación es adecuada
- [ ] No hay dependencias innecesarias
- [ ] Los cambios siguen las guías del proyecto
- [ ] CI está en verde

---

**Nota para el autor:** Asegúrate de marcar todos los checkboxes relevantes antes de solicitar review.
