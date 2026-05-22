#!/bin/bash

# ==============================================================================
# SCRIPT AJUSTADO PARA TU CASO
# Señor Stark ya tiene:
# - carpeta creada
# - git init
# - remote origin configurado
# ==============================================================================

echo "Creando estructura del laboratorio..."

# Crear carpetas (no afecta si ya existen)
mkdir -p pages
mkdir -p assets/css
mkdir -p assets/js
mkdir -p assets/img
mkdir -p data
mkdir -p docs

echo "Creando archivos de configuración..."

cat << 'EOF' > .gitignore
# Dependencias y temporales
node_modules/
dist/

# Archivos sensibles
.env

# Sistema operativo
.DS_Store
Thumbs.db

# Logs
*.log
EOF

cat << 'EOF' > README.md
# 🚀 Proyecto Base: Prácticas de Git & GitHub

Repositorio de entrenamiento para practicar:

- Git
- GitHub
- Merge conflicts
- Branches
- Trabajo colaborativo

## Arquitectura

/assets  -> Recursos estáticos
/pages   -> Páginas HTML
/data    -> Configuración JSON
/docs    -> Documentación interna
EOF

cat << 'EOF' > docs/CONTRIBUTING.md
# Guía de Contribución

1. No trabajar directamente sobre main.
2. Usar ramas feature/*
3. Resolver conflictos antes del push.
EOF

echo "Creando archivos JSON..."

cat << 'EOF' > data/settings.json
{
  "entorno": "desarrollo",
  "version": "1.0.0",
  "tema_por_defecto": "oscuro",
  "api_endpoint": "http://localhost:3000/api/v1"
}
EOF

echo "Creando recursos visuales..."

cat << 'EOF' > assets/img/logo.svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
  <circle cx="50" cy="50" r="45" fill="#0f172a"/>
</svg>
EOF

echo "Creando CSS..."

cat << 'EOF' > assets/css/style.css
body {
    background-color: #0f172a;
    color: #cbd5e1;
    font-family: Arial, sans-serif;
}
EOF

echo "Creando JavaScript..."

cat << 'EOF' > assets/js/utils.js
const Logger = {
    info: (msg) => console.log(msg)
};
EOF

cat << 'EOF' > assets/js/app.js
document.addEventListener('DOMContentLoaded', () => {
    console.log("Laboratorio Git cargado");
});
EOF

echo "Creando HTML principal..."

cat << 'EOF' > index.html
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Laboratorio Git</title>

    <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>

    <h1>Laboratorio Git</h1>

    <nav>
        <a href="pages/setup.html">Setup</a>
        <a href="pages/ramas.html">Ramas</a>
        <a href="pages/remotos.html">Remotos</a>
    </nav>

    <script src="./assets/js/utils.js"></script>
    <script src="./assets/js/app.js"></script>

</body>

</html>
EOF

echo "Creando páginas secundarias..."

cat << 'EOF' > pages/setup.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Setup</title>
</head>
<body>

<h1>Configuración Git</h1>

</body>
</html>
EOF

cat << 'EOF' > pages/ramas.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ramas</title>
</head>
<body>

<h1>Gestión de Ramas</h1>

</body>
</html>
EOF

cat << 'EOF' > pages/remotos.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Remotos</title>
</head>
<body>

<h1>Repositorios Remotos</h1>

</body>
</html>
EOF

echo "================================================================="
echo "✅ Estructura creada correctamente"
echo "📂 Ya puedes hacer:"
echo ""
echo "git add ."
echo "git commit -m 'estructura base'"
echo "git push"
echo "================================================================="
