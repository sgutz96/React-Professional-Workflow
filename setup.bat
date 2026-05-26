@echo off
TITLE Configuracion Curso React - Bases a Pro
color 0A

echo ========================================
echo   CONFIGURANDO ESTRUCTURA DEL CURSO
echo ========================================
echo.

:: Carpeta principal
mkdir React-Curso-Pro
cd React-Curso-Pro

:: =========================
:: CLASE 1
:: =========================
mkdir "Clase-01-JSX-y-Paradigma"
cd "Clase-01-JSX-y-Paradigma"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 01 - JSX y Cambio de Paradigma
echo.
echo ## Tema
echo Introduccion a React y JSX.
echo.
echo ## Descripcion
echo Transformar una interfaz creada con JavaScript vanilla a una arquitectura declarativa usando React y JSX.
) > README.md

cd ..

:: =========================
:: CLASE 2
:: =========================
mkdir "Clase-02-Componentes-y-Props"
cd "Clase-02-Componentes-y-Props"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 02 - Componentes y Props
echo.
echo ## Tema
echo Arquitectura modular en React.
echo.
echo ## Descripcion
echo Construccion de interfaces reutilizables mediante componentes y paso de datos con props.
) > README.md

cd ..

:: =========================
:: CLASE 3
:: =========================
mkdir "Clase-03-useState"
cd "Clase-03-useState"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 03 - useState
echo.
echo ## Tema
echo Manejo de estado local.
echo.
echo ## Descripcion
echo Desarrollo de formularios dinamicos y validaciones en tiempo real usando estado reactivo.
) > README.md

cd ..

:: =========================
:: CLASE 4
:: =========================
mkdir "Clase-04-Eventos-y-Render"
cd "Clase-04-Eventos-y-Render"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 04 - Eventos y Renderizado
echo.
echo ## Tema
echo Eventos y render dinamico.
echo.
echo ## Descripcion
echo Creacion de aplicaciones interactivas con renderizado condicional y listas dinamicas.
) > README.md

cd ..

:: =========================
:: CLASE 5
:: =========================
mkdir "Clase-05-useEffect-y-APIs"
cd "Clase-05-useEffect-y-APIs"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 05 - useEffect y APIs
echo.
echo ## Tema
echo Efectos secundarios y datos remotos.
echo.
echo ## Descripcion
echo Consumo de APIs, manejo de estados de carga y limpieza de efectos en React.
) > README.md

cd ..

:: =========================
:: CLASE 6
:: =========================
mkdir "Clase-06-React-Router"
cd "Clase-06-React-Router"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 06 - React Router
echo.
echo ## Tema
echo Navegacion en aplicaciones SPA.
echo.
echo ## Descripcion
echo Implementacion de rutas dinamicas y proteccion de vistas privadas.
) > README.md

cd ..

:: =========================
:: CLASE 7
:: =========================
mkdir "Clase-07-Context-API"
cd "Clase-07-Context-API"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 07 - Context API
echo.
echo ## Tema
echo Estado global en React.
echo.
echo ## Descripcion
echo Centralizacion de datos compartidos evitando Prop Drilling.
) > README.md

cd ..

:: =========================
:: CLASE 8
:: =========================
mkdir "Clase-08-useReducer"
cd "Clase-08-useReducer"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 08 - useReducer
echo.
echo ## Tema
echo Manejo de estado complejo.
echo.
echo ## Descripcion
echo Implementacion de reducers para controlar logica avanzada de aplicaciones.
) > README.md

cd ..

:: =========================
:: CLASE 9
:: =========================
mkdir "Clase-09-Custom-Hooks"
cd "Clase-09-Custom-Hooks"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 09 - Custom Hooks
echo.
echo ## Tema
echo Reutilizacion de logica.
echo.
echo ## Descripcion
echo Creacion de hooks personalizados para encapsular funcionalidades reutilizables.
) > README.md

cd ..

:: =========================
:: CLASE 10
:: =========================
mkdir "Clase-10-useRef-y-DOM"
cd "Clase-10-useRef-y-DOM"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 10 - useRef y DOM
echo.
echo ## Tema
echo Referencias y DOM real.
echo.
echo ## Descripcion
echo Integracion de React con librerias externas y manipulacion de nodos reales.
) > README.md

cd ..

:: =========================
:: CLASE 11
:: =========================
mkdir "Clase-11-Animaciones"
cd "Clase-11-Animaciones"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 11 - Animaciones Modernas
echo.
echo ## Tema
echo Experiencias visuales interactivas.
echo.
echo ## Descripcion
echo Implementacion de animaciones modernas y microinteracciones con Framer Motion.
) > README.md

cd ..

:: =========================
:: CLASE 12
:: =========================
mkdir "Clase-12-Tailwind-y-Design-System"
cd "Clase-12-Tailwind-y-Design-System"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 12 - Tailwind y Design System
echo.
echo ## Tema
echo Sistemas de diseño modernos.
echo.
echo ## Descripcion
echo Construccion de componentes reutilizables usando Tailwind CSS.
) > README.md

cd ..

:: =========================
:: CLASE 13
:: =========================
mkdir "Clase-13-Performance-Optimization"
cd "Clase-13-Performance-Optimization"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 13 - Performance Optimization
echo.
echo ## Tema
echo Optimizacion avanzada.
echo.
echo ## Descripcion
echo Analisis y mejora del rendimiento de aplicaciones React.
) > README.md

cd ..

:: =========================
:: CLASE 14
:: =========================
mkdir "Clase-14-TanStack-Query"
cd "Clase-14-TanStack-Query"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 14 - TanStack Query
echo.
echo ## Tema
echo Manejo moderno de datos.
echo.
echo ## Descripcion
echo Implementacion de cache, sincronizacion y mutaciones optimistas.
) > README.md

cd ..

:: =========================
:: CLASE 15
:: =========================
mkdir "Clase-15-Testing-con-Vitest"
cd "Clase-15-Testing-con-Vitest"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 15 - Testing con Vitest
echo.
echo ## Tema
echo Testing frontend.
echo.
echo ## Descripcion
echo Creacion de pruebas automatizadas para componentes y hooks.
) > README.md

cd ..

:: =========================
:: CLASE 16
:: =========================
mkdir "Clase-16-Deploy-y-CICD"
cd "Clase-16-Deploy-y-CICD"
mkdir codigo recursos ejercicios proyecto

(
echo # Clase 16 - Deploy y CI/CD
echo.
echo ## Tema
echo Produccion y despliegue.
echo.
echo ## Descripcion
echo Preparacion y despliegue profesional de aplicaciones React.
) > README.md

cd ..

:: README PRINCIPAL

(
echo # React: De Bases Web a Desarrollo Profesional
echo.
echo Curso completo de React enfocado en arquitectura moderna, rendimiento y despliegue profesional.
) > README.md

echo.
echo ========================================
echo   ESTRUCTURA CREADA CORRECTAMENTE
echo ========================================
echo.

pause
