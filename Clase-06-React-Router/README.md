# Clase 06 - React Router

## 🎯 Tema

Navegación y gestión de rutas en aplicaciones SPA (Single Page Applications) utilizando React Router.

---

## 📖 Descripción

En esta clase los estudiantes aprenderán a implementar sistemas de navegación modernos dentro de aplicaciones React utilizando **React Router**. Se explorará la creación de rutas estáticas y dinámicas, la navegación entre vistas sin recargar la página, el manejo de parámetros en URL y la protección de rutas privadas mediante mecanismos básicos de autenticación.

El objetivo es comprender cómo estructurar aplicaciones multipágina dentro del modelo SPA, una de las arquitecturas más utilizadas en el desarrollo Front-End moderno.

---

## 🎯 Objetivo General

Implementar sistemas de navegación en aplicaciones React mediante React Router, utilizando rutas dinámicas y mecanismos básicos de protección de vistas privadas.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender el concepto de SPA (Single Page Application).
* Instalar y configurar React Router.
* Crear rutas y páginas dentro de una aplicación React.
* Navegar entre vistas sin recargar el navegador.
* Implementar rutas dinámicas utilizando parámetros.
* Utilizar enlaces de navegación con `Link` y `NavLink`.
* Gestionar rutas protegidas.
* Aplicar buenas prácticas de organización para aplicaciones multipágina.

---

# 📚 Temas de la Clase

## 1. ¿Qué es una SPA?

Una **Single Page Application (SPA)** es una aplicación web que actualiza el contenido dinámicamente sin recargar completamente la página.

### Ventajas

* Navegación más rápida.
* Mejor experiencia de usuario.
* Menor tráfico de red.
* Interfaces más fluidas.
* Mayor interacción en tiempo real.

### Ejemplos

* Gmail
* Facebook
* Trello
* Notion
* Spotify Web

---

## 2. ¿Qué es React Router?

React Router es la biblioteca oficial para gestionar la navegación dentro de aplicaciones React.

Permite:

* Crear rutas.
* Gestionar navegación.
* Leer parámetros de URL.
* Implementar rutas protegidas.
* Crear aplicaciones multipágina bajo arquitectura SPA.

---

## 3. Instalación

```bash
npm install react-router-dom
```

---

## 4. Configuración Básica

### Envolver la aplicación

```jsx id="r4m8k2"
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";

ReactDOM.createRoot(
  document.getElementById("root")
).render(
  <BrowserRouter>
    <App />
  </BrowserRouter>
);
```

---

## 5. Definición de Rutas

```jsx id="x6p3n5"
import {
  Routes,
  Route
} from "react-router-dom";

function App() {
  return (
    <Routes>

      <Route
        path="/"
        element={<Home />}
      />

      <Route
        path="/about"
        element={<About />}
      />

    </Routes>
  );
}
```

---

## 6. Navegación con Link

### Evitar recargas de página

```jsx id="k9w2t7"
import { Link }
from "react-router-dom";

<Link to="/">
  Inicio
</Link>

<Link to="/about">
  Acerca de
</Link>
```

---

## 7. NavLink

Permite identificar la ruta activa.

```jsx id="m5q8v1"
import {
  NavLink
} from "react-router-dom";

<NavLink to="/">
  Inicio
</NavLink>
```

---

## 8. Organización de Páginas

### Estructura Recomendada

```text id="t3v7p4"
src/
│
├── pages/
│   ├── Home.jsx
│   ├── About.jsx
│   ├── Contact.jsx
│   └── Login.jsx
│
├── components/
│   ├── Navbar.jsx
│   └── Footer.jsx
│
├── App.jsx
└── main.jsx
```

---

## 9. Rutas Dinámicas

Permiten capturar información desde la URL.

### Ejemplo

```jsx id="j2m6r8"
<Route
  path="/producto/:id"
  element={<Producto />}
/>
```

URL:

```text id="f4v9w2"
/producto/25
```

---

## 10. useParams

Obtiene parámetros dinámicos.

```jsx id="q8n3k7"
import {
  useParams
} from "react-router-dom";

function Producto() {

  const { id } =
  useParams();

  return (
    <h1>
      Producto {id}
    </h1>
  );
}
```

---

## 11. Navegación Programática

Permite cambiar de ruta mediante código.

### useNavigate

```jsx id="u6w4p1"
import {
  useNavigate
} from "react-router-dom";

const navigate =
useNavigate();
```

```jsx id="n9k2v5"
navigate("/dashboard");
```

---

## 12. Página No Encontrada (404)

```jsx id="z4m7t8"
<Route
  path="*"
  element={<NotFound />}
/>
```

Se ejecuta cuando ninguna ruta coincide.

---

## 13. Rutas Protegidas

Algunas páginas requieren autenticación.

Ejemplos:

* Dashboard
* Perfil
* Administración
* Configuración

---

## 14. Protected Route

### Ejemplo Conceptual

```jsx id="w5p8r3"
function ProtectedRoute({
  children
}) {

  const autenticado =
  true;

  return autenticado
    ? children
    : <Login />;
}
```

Uso:

```jsx id="e7n4k1"
<Route
  path="/dashboard"
  element={
    <ProtectedRoute>
      <Dashboard />
    </ProtectedRoute>
  }
/>
```

---

## 15. Layouts Compartidos

Permiten reutilizar elementos comunes.

Ejemplos:

* Navbar
* Footer
* Sidebar
* Menús

```text id="h3v6m2"
Navbar
   ↓
Contenido
   ↓
Footer
```

---

## 16. Buenas Prácticas

### Hacer

* Organizar páginas y componentes.
* Utilizar rutas semánticas.
* Proteger vistas privadas.
* Crear página 404.
* Centralizar configuración de rutas.

### Evitar

* Rutas duplicadas.
* Navegación mediante etiquetas `<a>`.
* URLs poco descriptivas.
* Lógica de autenticación dispersa.

---

# ⚖️ Comparativas

## HTML Tradicional

```html id="y8w3p6"
<a href="/about">
  Acerca de
</a>
```

Recarga toda la página.

---

## React Router

```jsx id="r5n2v9"
<Link to="/about">
  Acerca de
</Link>
```

Navegación sin recarga.

---

## URL Estática

```text id="p7k4m1"
/producto
```

---

## URL Dinámica

```text id="s2v8q5"
/producto/25
```

---

## Navegación Manual

```javascript id="x9m4w7"
window.location =
"/dashboard";
```

---

## React Router

```jsx id="k6p1n3"
navigate("/dashboard");
```

---

# 🚀 ¿Por Qué es Importante React Router?

La mayoría de aplicaciones modernas necesitan múltiples vistas y sistemas de navegación complejos.

React Router permite construir:

* Paneles administrativos.
* Tiendas virtuales.
* Plataformas educativas.
* Redes sociales.
* Sistemas empresariales.
* Aplicaciones SaaS.

Es una herramienta fundamental para desarrollar aplicaciones React profesionales.

---

# 🛠 Actividad de Clase

## Reto

Crear una aplicación multipágina utilizando React Router.

### Requisitos

Páginas:

* Inicio
* Acerca de
* Contacto
* Perfil

### Funcionalidades

* Menú de navegación.
* Rutas configuradas correctamente.
* Página 404.
* Ruta dinámica para usuarios.
* Navegación mediante `Link`.

### Extra

Implementar:

* Login simulado.
* Ruta protegida.
* Dashboard privado.
* Navegación programática con `useNavigate`.

---

# 📌 Conceptos Clave

* SPA
* React Router
* BrowserRouter
* Routes
* Route
* Link
* NavLink
* useParams
* useNavigate
* Ruta dinámica
* Ruta protegida
* Página 404

---

# 📚 Recursos Recomendados

## Documentación Oficial

https://reactrouter.com

## React Router DOM

https://reactrouter.com/en/main/start/tutorial

## Conceptos de Navegación

https://reactrouter.com/en/main/components/link

---

# 💡 Reflexión Final

Las aplicaciones modernas ya no dependen de recargar páginas completas para navegar.

React Router permite construir experiencias fluidas y profesionales donde cada vista forma parte de una única aplicación, ofreciendo una experiencia similar a la de una aplicación móvil o de escritorio.
