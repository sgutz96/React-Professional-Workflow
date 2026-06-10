# Clase 10 - useRef y DOM

## 🎯 Tema

Manipulación de referencias y acceso al DOM real mediante el Hook **useRef**.

---

## 📖 Descripción

En esta clase los estudiantes aprenderán a utilizar el Hook `useRef` para acceder directamente a elementos del DOM y almacenar valores persistentes entre renderizados sin provocar actualizaciones de la interfaz.

Además, se explorará cómo React puede integrarse con librerías externas que requieren acceso directo al DOM, tales como herramientas de visualización, animación, multimedia, gráficos interactivos y motores 3D, estableciendo un puente entre React y tecnologías previamente estudiadas como Three.js, P5.js y D3.js.

---

## 🎯 Objetivo General

Utilizar el Hook `useRef` para interactuar con elementos reales del DOM e integrar React con librerías externas que requieren acceso directo a nodos HTML.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender el propósito del Hook `useRef`.
* Acceder a elementos reales del DOM desde React.
* Diferenciar entre `useState` y `useRef`.
* Manipular nodos HTML de forma controlada.
* Gestionar focos, selecciones y eventos especiales.
* Integrar React con librerías externas.
* Implementar referencias persistentes entre renderizados.
* Aplicar buenas prácticas de interacción con el DOM.

---

# 📚 Temas de la Clase

## 1. React y el DOM

Normalmente React administra automáticamente la actualización de la interfaz mediante el Virtual DOM.

```text id="a1"
Usuario
   ↓
State
   ↓
Virtual DOM
   ↓
DOM Real
```

Sin embargo, existen situaciones donde es necesario acceder directamente al DOM real.

---

## 2. ¿Qué es useRef?

`useRef` es un Hook que permite:

* Referenciar elementos del DOM.
* Almacenar valores persistentes.
* Mantener datos entre renderizados.
* Evitar renderizados innecesarios.

---

## 3. Sintaxis Básica

```jsx id="a2"
import { useRef }
from "react";

const referencia =
useRef(null);
```

---

## 4. Asociar una Referencia

```jsx id="a3"
<input
  ref={referencia}
/>
```

---

## 5. Acceder al Elemento

```jsx id="a4"
referencia.current
```

`current` contiene el nodo real del DOM.

---

## 6. Ejemplo: Enfocar un Input

```jsx id="a5"
const inputRef =
useRef(null);

const enfocar = () => {

  inputRef.current.focus();

};
```

```jsx id="a6"
<input
  ref={inputRef}
/>

<button
  onClick={enfocar}
>
  Enfocar
</button>
```

---

## 7. useRef vs useState

### useState

```jsx id="a7"
const [valor,
setValor] =
useState(0);
```

* Produce renderizado.
* Actualiza la interfaz.

---

### useRef

```jsx id="a8"
const valor =
useRef(0);
```

* No produce renderizado.
* Mantiene información persistente.

---

## 8. Almacenamiento Persistente

```jsx id="a9"
const contador =
useRef(0);

contador.current++;
```

El valor cambia sin volver a renderizar el componente.

---

## 9. Casos de Uso Comunes

### Gestión de Foco

```text id="a10"
Inputs
Formularios
Buscadores
```

---

### Scroll Automático

```text id="a11"
Chats
Feeds
Listados
```

---

### Selección de Texto

```text id="a12"
Editores
Buscadores
Formularios
```

---

### Reproducción Multimedia

```text id="a13"
Audio
Video
Streaming
```

---

## 10. Control de Elementos Multimedia

### Ejemplo

```jsx id="a14"
const videoRef =
useRef(null);
```

```jsx id="a15"
videoRef.current.play();
```

```jsx id="a16"
videoRef.current.pause();
```

---

## 11. useRef y useEffect

Una combinación muy común.

```jsx id="a17"
useEffect(() => {

  inputRef.current.focus();

}, []);
```

Al cargar el componente, el foco se activa automáticamente.

---

## 12. Integración con Librerías Externas

Muchas librerías necesitan acceso directo al DOM.

Ejemplos:

* Three.js
* P5.js
* D3.js
* GSAP
* Chart.js
* Leaflet
* Mapbox

---

## 13. Integración con D3.js

### Crear contenedor

```jsx id="a18"
const chartRef =
useRef(null);
```

```jsx id="a19"
<div
  ref={chartRef}
></div>
```

---

### Inicializar

```jsx id="a20"
useEffect(() => {

  d3.select(
    chartRef.current
  );

}, []);
```

---

## 14. Integración con Three.js

### Canvas

```jsx id="a21"
const canvasRef =
useRef(null);
```

```jsx id="a22"
<canvas
  ref={canvasRef}
/>
```

---

### Inicialización

```jsx id="a23"
useEffect(() => {

  const renderer =
  new THREE.WebGLRenderer({
    canvas:
    canvasRef.current
  });

}, []);
```

---

## 15. Integración con P5.js

### Contenedor

```jsx id="a24"
const sketchRef =
useRef(null);
```

```jsx id="a25"
<div
  ref={sketchRef}
></div>
```

---

### Creación

```jsx id="a26"
useEffect(() => {

  new p5(
    sketch,
    sketchRef.current
  );

}, []);
```

---

## 16. Buenas Prácticas

### Hacer

* Utilizar useRef para acceso puntual al DOM.
* Integrar librerías externas mediante referencias.
* Combinar con useEffect cuando sea necesario.
* Mantener el control principal en React.

### Evitar

* Reemplazar el estado con referencias.
* Manipular excesivamente el DOM.
* Alterar elementos controlados por React.
* Crear dependencias innecesarias.

---

## 17. Limitaciones

Aunque useRef es muy útil, React recomienda utilizar primero:

* Props
* State
* Context API

El acceso directo al DOM debe utilizarse únicamente cuando realmente sea necesario.

---

# ⚖️ Comparativas

## JavaScript Vanilla

```javascript id="a27"
const input =
document.querySelector(
  "#nombre"
);

input.focus();
```

---

## React

```jsx id="a28"
inputRef.current.focus();
```

---

## Variable Normal

```javascript id="a29"
let contador = 0;
```

Se reinicia en cada renderizado.

---

## useRef

```jsx id="a30"
const contador =
useRef(0);
```

Permanece entre renderizados.

---

## Integración Externa

### Sin React

```javascript id="a31"
const canvas =
document.getElementById(
  "canvas"
);
```

---

### Con React

```jsx id="a32"
canvasRef.current
```

---

# 🚀 ¿Por Qué es Importante useRef?

Aunque React abstrae gran parte de la manipulación del DOM, las aplicaciones reales suelen requerir integración con tecnologías externas.

`useRef` permite:

* Acceder al DOM real.
* Gestionar multimedia.
* Controlar formularios avanzados.
* Crear animaciones.
* Integrar motores gráficos.
* Utilizar bibliotecas especializadas.

Es una herramienta fundamental para conectar React con el ecosistema completo del desarrollo web moderno.

---

# 🛠 Actividad de Clase

## Reto

Construir una aplicación multimedia utilizando `useRef`.

### Requisitos

* Campo de búsqueda con foco automático.
* Reproductor de video o audio.
* Botones de control personalizados.
* Acceso al DOM mediante referencias.

---

### Integración Obligatoria

Seleccionar una:

* D3.js
* Three.js
* P5.js
* Chart.js

---

### Funcionalidades

* Inicialización mediante `useEffect`.
* Uso de `useRef`.
* Interacción del usuario.
* Actualización visual.

---

### Extra

Implementar:

* Animaciones.
* Control de reproducción.
* Visualización de datos en tiempo real.
* Dashboard interactivo.

---

# 📌 Conceptos Clave

* useRef
* Referencias
* DOM
* Virtual DOM
* current
* Foco
* Multimedia
* Integración Externa
* Three.js
* D3.js
* P5.js

---

# 📚 Recursos Recomendados

## useRef

https://react.dev/reference/react/useRef

## Manipulación del DOM

https://react.dev/learn/manipulating-the-dom-with-refs

## Three.js

https://threejs.org

## D3.js

https://d3js.org

## P5.js

https://p5js.org

## Chart.js

https://www.chartjs.org

---

# 💡 Reflexión Final

React busca minimizar la manipulación directa del DOM, pero existen situaciones donde el acceso a elementos reales es indispensable.

`useRef` actúa como un puente entre React y el navegador, permitiendo integrar librerías externas, gestionar multimedia y construir experiencias avanzadas que van más allá de la interfaz tradicional.
