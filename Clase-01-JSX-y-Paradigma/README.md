# Clase 01 - JSX y Cambio de Paradigma

## 🎯 Tema

Introducción a React, JSX y al paradigma declarativo de construcción de interfaces.

---

## 📖 Descripción

En esta clase se explorará el origen de React y las razones que motivaron su creación. Los estudiantes comprenderán la diferencia entre la programación imperativa utilizada en JavaScript tradicional y el enfoque declarativo propuesto por React.

A partir de ejemplos prácticos, se transformará una interfaz construida con HTML, CSS y JavaScript Vanilla hacia una arquitectura basada en componentes utilizando JSX.

---

## 🎯 Objetivo General

Comprender el cambio de paradigma entre JavaScript tradicional y React, utilizando JSX para construir interfaces declarativas, reutilizables y fáciles de mantener.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Identificar las limitaciones del desarrollo de interfaces mediante manipulación directa del DOM.
* Comprender el concepto de interfaz declarativa.
* Explicar qué es React y cuál es su propósito dentro del desarrollo Front-End moderno.
* Reconocer la función de JSX dentro del ecosistema React.
* Crear componentes básicos utilizando JSX.
* Transformar estructuras HTML tradicionales en componentes React.
* Comparar diferentes enfoques para construir interfaces web.

---

# 📚 Temas de la Clase

## 1. Evolución del Front-End

* HTML estático.
* Aparición de JavaScript.
* Manipulación del DOM.
* Aplicaciones SPA.
* Nacimiento de React.

### Pregunta guía

¿Por qué surgió React si ya existían HTML, CSS y JavaScript?

---

## 2. Programación Imperativa vs Declarativa

### Enfoque Imperativo

Se especifica paso a paso cómo modificar la interfaz.

Ejemplo:

* Buscar un elemento.
* Crear un nodo.
* Insertarlo en el DOM.
* Actualizar atributos.
* Escuchar eventos.

### Enfoque Declarativo

Se describe cómo debe verse la interfaz según el estado de la aplicación.

Ejemplo:

"Si existen productos, muéstralos en una lista."

React se encarga de realizar las modificaciones necesarias.

---

## 3. ¿Qué es React?

React es una biblioteca de JavaScript desarrollada por Facebook para construir interfaces de usuario mediante componentes reutilizables.

### Características principales

* Basado en componentes.
* Reutilización de código.
* Virtual DOM.
* Flujo de datos predecible.
* Ecosistema robusto.
* Amplia adopción en la industria.

---

## 4. ¿Por qué React?

### Problemas comunes con JavaScript Vanilla

* Código repetitivo.
* Manipulación compleja del DOM.
* Difícil mantenimiento.
* Escalabilidad limitada.
* Dependencias entre elementos visuales.

### Soluciones que aporta React

* Componentización.
* Reutilización.
* Mejor organización.
* Actualización eficiente de la interfaz.
* Mayor mantenibilidad.

---

## 5. Introducción a JSX

JSX (JavaScript XML) es una sintaxis que permite escribir estructuras similares a HTML dentro de JavaScript.

### Beneficios

* Mayor legibilidad.
* Integración directa con JavaScript.
* Componentes más intuitivos.
* Menos manipulación manual del DOM.

---

## 6. Reglas Básicas de JSX

* Un único elemento raíz.
* Uso de llaves `{}` para expresiones JavaScript.
* Uso de `className` en lugar de `class`.
* Etiquetas correctamente cerradas.
* Componentes escritos en PascalCase.

---

## 7. Componentes

### ¿Qué es un componente?

Una unidad reutilizable de interfaz.

Ejemplos:

* Navbar
* Footer
* Card
* Botón
* Formulario
* Producto

### Ventajas

* Reutilización.
* Modularidad.
* Mantenimiento.
* Escalabilidad.

---

# ⚖️ Comparativas

## HTML Tradicional

```html
<h1>Hola Mundo</h1>
<p>Bienvenido</p>
```

## JSX

```jsx
<>
  <h1>Hola Mundo</h1>
  <p>Bienvenido</p>
</>
```

---

## JavaScript Vanilla

```javascript
const titulo = document.createElement("h1");
titulo.textContent = "Hola Mundo";
document.body.appendChild(titulo);
```

## React

```jsx
function App() {
  return <h1>Hola Mundo</h1>;
}
```

---

# 🚀 ¿Por qué aprender React?

Actualmente React es una de las tecnologías más utilizadas para:

* Desarrollo web profesional.
* Dashboards administrativos.
* E-commerce.
* Aplicaciones empresariales.
* Aplicaciones híbridas.
* Desarrollo móvil mediante React Native.

Empresas de diferentes sectores utilizan React para construir interfaces escalables y mantenibles.

---

# 🛠 Actividad de Clase

## Reto

Transformar una página construida en HTML, CSS y JavaScript tradicional hacia una versión basada en React.

### Requisitos

* Crear mínimo 3 componentes.
* Utilizar JSX.
* Reutilizar al menos un componente.
* Organizar la interfaz mediante componentes independientes.

---

# 📌 Conceptos Clave

* React
* JSX
* Componente
* Virtual DOM
* Declarativo
* Imperativo
* Reutilización
* UI
* Renderizado

---

# 📚 Recursos Recomendados

## Documentación Oficial

https://react.dev

## Playground JSX

https://babeljs.io/repl

## Instalación con Vite

https://vitejs.dev

---

# 💡 Reflexión Final

React no reemplaza HTML, CSS o JavaScript.

React utiliza estas tecnologías para construir interfaces de forma más organizada, reutilizable y escalable, permitiendo desarrollar aplicaciones modernas con mayor eficiencia.
