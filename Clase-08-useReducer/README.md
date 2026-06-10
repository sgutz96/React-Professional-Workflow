# Clase 08 - useReducer

## 🎯 Tema

Manejo de estado complejo en React mediante el Hook **useReducer**.

---

## 📖 Descripción

En esta clase se abordará el manejo de estados complejos utilizando el Hook `useReducer`. Los estudiantes aprenderán a organizar y centralizar la lógica de actualización del estado cuando una aplicación requiere múltiples cambios, acciones o estructuras de datos complejas.

A través de ejemplos prácticos se explorará la implementación de reducers, acciones y dispatchers, comprendiendo cómo React adopta principios similares a los utilizados en arquitecturas de gestión de estado como Redux.

---

## 🎯 Objetivo General

Implementar el Hook `useReducer` para gestionar estados complejos y centralizar la lógica de actualización de datos dentro de aplicaciones React.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender cuándo utilizar `useReducer` en lugar de `useState`.
* Diseñar reducers para gestionar estados complejos.
* Implementar acciones y dispatchers.
* Organizar la lógica de actualización de datos.
* Gestionar múltiples cambios de estado desde un único punto.
* Aplicar patrones de programación basados en acciones.
* Integrar `useReducer` con Context API.
* Construir aplicaciones más escalables y mantenibles.

---

# 📚 Temas de la Clase

## 1. Limitaciones de useState

Cuando una aplicación crece, pueden aparecer múltiples estados relacionados.

### Ejemplo

```jsx id="a1m8v4"
const [usuario,
setUsuario] =
useState(null);

const [productos,
setProductos] =
useState([]);

const [carrito,
setCarrito] =
useState([]);

const [cargando,
setCargando] =
useState(false);
```

La lógica puede volverse difícil de mantener.

---

## 2. ¿Qué es useReducer?

`useReducer` es un Hook que permite administrar estados complejos mediante una función llamada **Reducer**.

Su funcionamiento se basa en tres elementos:

```text id="p4v7n2"
Estado
   ↓
Acción
   ↓
Reducer
   ↓
Nuevo Estado
```

---

## 3. Conceptos Fundamentales

### State

Representa el estado actual.

### Action

Describe qué cambio debe realizarse.

### Reducer

Función que recibe el estado actual y la acción para devolver un nuevo estado.

### Dispatch

Función encargada de enviar acciones al reducer.

---

## 4. Sintaxis de useReducer

```jsx id="m8k2p5"
const [state, dispatch] =
useReducer(
  reducer,
  initialState
);
```

---

## 5. Creación de un Reducer

```jsx id="r3n7v8"
function reducer(
  state,
  action
) {

  switch(action.type) {

    default:
      return state;

  }

}
```

---

## 6. Estado Inicial

```jsx id="t5m9k1"
const initialState = {
  contador: 0
};
```

---

## 7. Ejemplo Básico: Contador

### Reducer

```jsx id="q8v2n6"
function reducer(
  state,
  action
) {

  switch(action.type) {

    case "INCREMENTAR":
      return {
        contador:
        state.contador + 1
      };

    case "DECREMENTAR":
      return {
        contador:
        state.contador - 1
      };

    default:
      return state;
  }

}
```

---

### Dispatch

```jsx id="w7m4p2"
dispatch({
  type:
  "INCREMENTAR"
});
```

---

## 8. Flujo de Trabajo

```text id="k9v1m7"
Usuario
   ↓
Evento
   ↓
Dispatch
   ↓
Reducer
   ↓
Nuevo Estado
   ↓
Renderizado
```

---

## 9. Acciones con Payload

Permiten enviar información adicional.

### Acción

```jsx id="u2n8k4"
dispatch({
  type: "AGREGAR",
  payload: producto
});
```

---

### Reducer

```jsx id="x6p3v9"
case "AGREGAR":
  return {
    ...state,
    productos: [
      ...state.productos,
      action.payload
    ]
  };
```

---

## 10. Gestión de Formularios

`useReducer` es útil cuando existen muchos campos relacionados.

### Estado

```jsx id="h4m7k2"
const initialState = {
  nombre: "",
  correo: "",
  telefono: ""
};
```

---

### Actualización

```jsx id="c8n2v5"
dispatch({
  type: "ACTUALIZAR",
  campo: "nombre",
  valor: "Juan"
});
```

---

## 11. Gestión de Listas

### Agregar

```jsx id="j5v8m3"
dispatch({
  type: "AGREGAR_TAREA",
  payload: tarea
});
```

### Eliminar

```jsx id="f2k9p6"
dispatch({
  type: "ELIMINAR_TAREA",
  payload: id
});
```

### Completar

```jsx id="n7m1v4"
dispatch({
  type: "COMPLETAR",
  payload: id
});
```

---

## 12. Reducers Escalables

A medida que la aplicación crece, el reducer centraliza toda la lógica de actualización.

```text id="s4v7k8"
Acciones
    ↓
Reducer
    ↓
Estado Global
```

---

## 13. useReducer + Context API

Una combinación muy utilizada en aplicaciones reales.

```text id="z8m3p1"
Context API
      +
useReducer
      ↓
Estado Global
```

Esta arquitectura es la base conceptual de Redux.

---

## 14. Casos de Uso Reales

### Carrito de Compras

* Agregar productos.
* Eliminar productos.
* Actualizar cantidades.
* Calcular totales.

---

### Gestión de Usuarios

* Login.
* Logout.
* Actualizar perfil.
* Roles.

---

### Formularios Complejos

* Registro.
* Encuestas.
* Configuración.

---

### Aplicaciones Empresariales

* Inventarios.
* Facturación.
* Gestión documental.

---

## 15. Buenas Prácticas

### Hacer

* Utilizar constantes para acciones.
* Mantener reducers puros.
* Organizar acciones por funcionalidad.
* Evitar modificar el estado directamente.

### Evitar

* Reducers demasiado grandes.
* Lógica asíncrona dentro del reducer.
* Mutaciones del estado.
* Acciones ambiguas.

---

# ⚖️ Comparativas

## useState

```jsx id="p3v6n2"
const [contador,
setContador] =
useState(0);
```

Ideal para estados simples.

---

## useReducer

```jsx id="w5m9k7"
const [state,
dispatch] =
useReducer(
  reducer,
  initialState
);
```

Ideal para estados complejos.

---

## Actualización con useState

```jsx id="q1n8v5"
setContador(
  contador + 1
);
```

---

## Actualización con useReducer

```jsx id="r7m2p4"
dispatch({
  type:
  "INCREMENTAR"
});
```

---

## Múltiples Estados

```jsx id="t9v4k1"
setNombre();
setCorreo();
setTelefono();
```

---

## Estado Centralizado

```jsx id="u3m7n8"
dispatch({
  type:
  "ACTUALIZAR_USUARIO"
});
```

---

# 🚀 ¿Por Qué es Importante useReducer?

A medida que las aplicaciones aumentan en tamaño, la gestión de estado puede volverse compleja.

`useReducer` permite:

* Centralizar lógica.
* Mejorar organización.
* Facilitar mantenimiento.
* Escalar aplicaciones.
* Reducir errores.

Es una herramienta fundamental para proyectos medianos y grandes.

---

# 🛠 Actividad de Clase

## Reto

Desarrollar un gestor de tareas utilizando `useReducer`.

### Requisitos

* Agregar tareas.
* Eliminar tareas.
* Marcar tareas como completadas.
* Mostrar contador de tareas.
* Utilizar acciones y reducers.

### Acciones Sugeridas

```text id="y6p2v8"
AGREGAR_TAREA
ELIMINAR_TAREA
COMPLETAR_TAREA
LIMPIAR_TAREAS
```

### Extra

Implementar:

* Persistencia con Local Storage.
* Filtros.
* Context API.
* Categorías de tareas.

---

# 📌 Conceptos Clave

* useReducer
* Reducer
* Action
* Dispatch
* Estado Complejo
* Estado Inmutable
* Payload
* Flujo de Datos
* Context API
* Arquitectura Escalable

---

# 📚 Recursos Recomendados

## useReducer

https://react.dev/reference/react/useReducer

## Reducers

https://react.dev/learn/extracting-state-logic-into-a-reducer

## Context + Reducer

https://react.dev/learn/scaling-up-with-reducer-and-context

---

# 💡 Reflexión Final

Cuando una aplicación tiene múltiples cambios de estado relacionados, utilizar varios `useState` puede dificultar la organización del código.

`useReducer` ofrece una forma estructurada y escalable de gestionar información, acercando a los estudiantes a patrones utilizados en aplicaciones profesionales y arquitecturas de gran escala.
