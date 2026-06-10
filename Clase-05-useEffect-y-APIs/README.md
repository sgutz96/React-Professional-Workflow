# Clase 05 - useEffect y APIs

## 🎯 Tema

Efectos secundarios y consumo de datos remotos mediante el Hook **useEffect**.

---

## 📖 Descripción

En esta clase se explorará el Hook `useEffect`, una de las herramientas fundamentales de React para gestionar efectos secundarios dentro de una aplicación. Los estudiantes aprenderán a ejecutar código después del renderizado, consumir APIs externas, gestionar estados de carga, manejar errores y realizar procesos de limpieza para optimizar el rendimiento de las aplicaciones.

A través de ejercicios prácticos se construirán interfaces que obtienen información desde servicios web reales y actualizan automáticamente la interfaz según la respuesta recibida.

---

## 🎯 Objetivo General

Comprender el funcionamiento del Hook `useEffect` para gestionar efectos secundarios, consumir APIs externas y controlar el ciclo de vida de los componentes en React.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender qué son los efectos secundarios en React.
* Utilizar correctamente el Hook `useEffect`.
* Consumir datos desde APIs REST.
* Gestionar estados de carga y error.
* Actualizar interfaces con información remota.
* Comprender el ciclo de vida de los componentes funcionales.
* Implementar funciones de limpieza dentro de los efectos.
* Aplicar buenas prácticas para evitar renderizados innecesarios.

---

# 📚 Temas de la Clase

## 1. ¿Qué son los Efectos Secundarios?

Un efecto secundario es cualquier operación que ocurre fuera del proceso normal de renderizado.

### Ejemplos

* Consultar una API.
* Acceder al almacenamiento local.
* Manipular temporizadores.
* Escuchar eventos del navegador.
* Conectarse a servicios externos.
* Actualizar el título de una página.

---

## 2. Introducción a useEffect

`useEffect` permite ejecutar código después de que React renderiza un componente.

### Sintaxis Básica

```jsx id="u4w8m1"
import { useEffect } from "react";

useEffect(() => {
  console.log("Componente cargado");
});
```

---

## 3. Ciclo de Ejecución

```text id="k7v2n5"
Renderizado
      ↓
useEffect
      ↓
Actualización
      ↓
Nuevo Renderizado
```

---

## 4. Dependencias de useEffect

### Ejecutar en cada render

```jsx id="d3r8x4"
useEffect(() => {
  console.log("Render");
});
```

---

### Ejecutar solo una vez

```jsx id="m6q1t8"
useEffect(() => {
  console.log("Inicial");
}, []);
```

---

### Ejecutar cuando cambia un valor

```jsx id="n5p7w2"
useEffect(() => {
  console.log("Cambio");
}, [usuario]);
```

---

## 5. Consumo de APIs

Las APIs permiten obtener información desde servicios externos.

Ejemplos:

* Usuarios.
* Productos.
* Noticias.
* Clima.
* Redes sociales.
* Bases de datos remotas.

---

## 6. Fetch API

### Ejemplo Básico

```jsx id="a2v6j9"
useEffect(() => {
  fetch(url)
    .then(respuesta =>
      respuesta.json()
    )
    .then(datos =>
      console.log(datos)
    );
}, []);
```

---

## 7. Async/Await

### Forma Recomendada

```jsx id="p8k3x5"
useEffect(() => {

  const obtenerDatos =
  async () => {

    const respuesta =
      await fetch(url);

    const datos =
      await respuesta.json();

    console.log(datos);
  };

  obtenerDatos();

}, []);
```

---

## 8. Estado de Carga

Mientras la API responde es importante informar al usuario.

```jsx id="r7m4v1"
const [cargando,
setCargando] =
useState(true);
```

```jsx id="e2n8k6"
{
  cargando
    ? <p>Cargando...</p>
    : <Lista />
}
```

---

## 9. Estado de Error

Las conexiones pueden fallar.

```jsx id="w3p9t2"
const [error,
setError] =
useState(null);
```

```jsx id="x8m2q4"
{
  error &&
  <p>{error}</p>
}
```

---

## 10. Flujo Completo de Consumo

```text id="g4v7n3"
Componente
      ↓
useEffect
      ↓
API
      ↓
Respuesta
      ↓
State
      ↓
Renderizado
```

---

## 11. Limpieza de Efectos

Algunos procesos deben eliminarse cuando el componente desaparece.

### Ejemplo con Temporizador

```jsx id="j6r2w8"
useEffect(() => {

  const intervalo =
  setInterval(() => {
    console.log("Activo");
  }, 1000);

  return () => {
    clearInterval(intervalo);
  };

}, []);
```

---

## 12. Casos de Uso Reales

### Actualizar título

```jsx id="z5k8p1"
useEffect(() => {
  document.title =
  "React App";
}, []);
```

---

### Escuchar eventos

```jsx id="q2n6v7"
useEffect(() => {

  window.addEventListener(
    "resize",
    actualizar
  );

  return () => {
    window.removeEventListener(
      "resize",
      actualizar
    );
  };

}, []);
```

---

## 13. Buenas Prácticas

### Hacer

* Utilizar dependencias correctamente.
* Limpiar eventos y temporizadores.
* Manejar errores.
* Mostrar estados de carga.
* Separar lógica compleja.

### Evitar

* Actualizar estados innecesariamente.
* Omitir dependencias importantes.
* Generar ciclos infinitos.
* Ignorar errores de red.

---

# ⚖️ Comparativas

## JavaScript Vanilla

```javascript id="f8v4k2"
fetch(url)
.then(res =>
  res.json()
)
.then(data =>
  console.log(data)
);
```

---

## React con useEffect

```jsx id="t6q1w9"
useEffect(() => {

  obtenerDatos();

}, []);
```

---

## Temporizador Tradicional

```javascript id="h7m3r5"
const timer =
setInterval(
  funcion,
  1000
);
```

---

## React con Limpieza

```jsx id="y5n8k4"
useEffect(() => {

  const timer =
  setInterval(
    funcion,
    1000
  );

  return () =>
    clearInterval(timer);

}, []);
```

---

## Código Sin Estado

```javascript id="k3v7p1"
console.log("Cargando");
```

---

## React con Estado

```jsx id="s4m2w8"
{
  cargando
    ? "Cargando..."
    : "Datos Listos"
}
```

---

# 🚀 ¿Por Qué es Importante useEffect?

La mayoría de aplicaciones modernas necesitan interactuar con servicios externos.

Gracias a `useEffect` es posible:

* Obtener datos remotos.
* Sincronizar información.
* Integrar APIs.
* Gestionar autenticación.
* Escuchar eventos externos.
* Actualizar contenido dinámicamente.

Es uno de los Hooks más utilizados en el desarrollo profesional con React.

---

# 🛠 Actividad de Clase

## Reto

Construir una aplicación que consulte información desde una API pública.

### Requisitos

* Consumir una API utilizando `fetch`.
* Utilizar `useEffect`.
* Mostrar estado de carga.
* Mostrar mensajes de error.
* Renderizar la información obtenida.
* Utilizar componentes reutilizables.

### APIs Sugeridas

* JSONPlaceholder
* Fake Store API
* PokéAPI
* Open Library API
* REST Countries API

### Extra

Agregar:

* Buscador.
* Paginación.
* Filtros.
* Actualización dinámica de resultados.

---

# 📌 Conceptos Clave

* useEffect
* Efectos secundarios
* APIs
* Fetch
* Async/Await
* Estado de carga
* Estado de error
* Dependencias
* Cleanup
* Ciclo de vida

---

# 📚 Recursos Recomendados

## useEffect

https://react.dev/reference/react/useEffect

## Fetch API

https://developer.mozilla.org/es/docs/Web/API/Fetch_API

## JSONPlaceholder

https://jsonplaceholder.typicode.com

## PokéAPI

https://pokeapi.co

## Fake Store API

https://fakestoreapi.com

---

# 💡 Reflexión Final

React permite construir interfaces dinámicas, pero el verdadero potencial de una aplicación aparece cuando puede comunicarse con fuentes de datos externas.

Comprender `useEffect` y el consumo de APIs es el paso que transforma una aplicación local en una aplicación conectada al mundo real.
