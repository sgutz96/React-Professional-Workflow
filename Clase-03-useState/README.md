# Clase 03 - useState

## 🎯 Tema

Manejo de estado local en React mediante el Hook **useState**.

---

## 📖 Descripción

En esta clase se introduce el concepto de **estado (State)** como mecanismo fundamental para crear interfaces dinámicas e interactivas. Los estudiantes aprenderán a utilizar el Hook `useState` para almacenar información, reaccionar a eventos del usuario y actualizar automáticamente la interfaz.

A través del desarrollo de formularios dinámicos, contadores, validaciones en tiempo real y componentes interactivos, se comprenderá cómo React administra los cambios de información dentro de una aplicación.

---

## 🎯 Objetivo General

Comprender el funcionamiento del estado local en React utilizando el Hook `useState` para desarrollar interfaces dinámicas, formularios interactivos y experiencias reactivas.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender la diferencia entre Props y State.
* Utilizar el Hook `useState`.
* Crear variables de estado locales.
* Actualizar información de forma reactiva.
* Implementar formularios controlados.
* Gestionar eventos de usuario.
* Realizar validaciones en tiempo real.
* Construir interfaces dinámicas basadas en cambios de estado.

---

# 📚 Temas de la Clase

## 1. ¿Qué es el Estado?

El estado representa la información que puede cambiar durante la ejecución de una aplicación.

Ejemplos:

* Nombre de usuario.
* Contador.
* Lista de tareas.
* Estado de autenticación.
* Productos en un carrito.
* Resultados de búsqueda.

---

## 2. Interfaces Estáticas vs Dinámicas

### Interfaz Estática

La información permanece igual.

```jsx id="4m3a1k"
<h1>Bienvenido</h1>
```

### Interfaz Dinámica

La información cambia según las acciones del usuario.

```jsx id="0l4a9t"
<h1>Hola {nombre}</h1>
```

---

## 3. Introducción a useState

`useState` es un Hook que permite agregar estado a los componentes funcionales.

### Sintaxis

```jsx id="1x7u4c"
const [valor, setValor] = useState(valorInicial);
```

### Componentes principales

* valor → Estado actual.
* setValor → Función para actualizar el estado.
* valorInicial → Valor inicial del estado.

---

## 4. Primer Ejemplo: Contador

```jsx id="n5k7y2"
import { useState } from "react";

function Contador() {
  const [contador, setContador] = useState(0);

  return (
    <div>
      <h2>{contador}</h2>

      <button
        onClick={() =>
          setContador(contador + 1)
        }
      >
        Incrementar
      </button>
    </div>
  );
}
```

---

## 5. Ciclo de Actualización

Cuando cambia el estado:

1. React detecta el cambio.
2. El componente se vuelve a renderizar.
3. La interfaz se actualiza automáticamente.

```text id="d7l6e2"
Usuario
   ↓
Evento
   ↓
State
   ↓
Renderizado
   ↓
UI Actualizada
```

---

## 6. Eventos en React

### Eventos más comunes

* onClick
* onChange
* onSubmit
* onKeyDown
* onMouseEnter
* onMouseLeave

Ejemplo:

```jsx id="f3k8v1"
<button onClick={accion}>
  Clic Aquí
</button>
```

---

## 7. Formularios Controlados

Un formulario controlado utiliza el estado para almacenar los datos de entrada.

```jsx id="j9s5c7"
const [nombre, setNombre] =
  useState("");
```

```jsx id="v2n4w8"
<input
  type="text"
  value={nombre}
  onChange={(e) =>
    setNombre(e.target.value)
  }
/>
```

---

## 8. Validaciones en Tiempo Real

### Ejemplo

```jsx id="b6r2m9"
const [nombre, setNombre] =
  useState("");
```

```jsx id="e8q1z5"
{
  nombre.length < 3 &&
  (
    <p>
      El nombre debe tener
      al menos 3 caracteres
    </p>
  );
}
```

---

## 9. Múltiples Estados

```jsx id="h7u5c3"
const [nombre, setNombre] =
  useState("");

const [correo, setCorreo] =
  useState("");

const [edad, setEdad] =
  useState(18);
```

Cada dato puede administrarse mediante un estado independiente.

---

## 10. Estado con Objetos

```jsx id="m2k8t6"
const [usuario, setUsuario] =
  useState({
    nombre: "",
    correo: ""
  });
```

Actualización:

```jsx id="y4p1d8"
setUsuario({
  ...usuario,
  nombre: "Juan"
});
```

---

## 11. Estado con Arrays

```jsx id="s5v7e1"
const [tareas, setTareas] =
  useState([]);
```

Agregar elemento:

```jsx id="w3j8q4"
setTareas([
  ...tareas,
  nuevaTarea
]);
```

---

## 12. Diferencia Entre Props y State

| Props                                | State                               |
| ------------------------------------ | ----------------------------------- |
| Se reciben desde un componente padre | Se administra dentro del componente |
| Son de solo lectura                  | Puede modificarse                   |
| Comunicación entre componentes       | Gestión interna de información      |
| Configuran componentes               | Hacen componentes dinámicos         |

---

# ⚖️ Comparativas

## JavaScript Vanilla

```javascript id="p4v9e6"
const input =
document.querySelector("#nombre");

input.addEventListener(
  "input",
  () => {
    console.log(input.value);
  }
);
```

---

## React

```jsx id="z7x2c8"
const [nombre, setNombre] =
  useState("");

<input
  value={nombre}
  onChange={(e) =>
    setNombre(e.target.value)
  }
/>
```

---

## Manipulación del DOM

```javascript id="r5m8n1"
element.innerHTML =
"Nuevo texto";
```

---

## React

```jsx id="k2t6w3"
setTexto("Nuevo texto");
```

React actualiza la interfaz automáticamente.

---

# 🚀 ¿Por Qué es Importante useState?

El estado es el corazón de las aplicaciones interactivas.

Gracias a `useState` es posible crear:

* Formularios dinámicos.
* Aplicaciones CRUD.
* Sistemas de autenticación.
* Dashboards.
* Carritos de compra.
* Juegos interactivos.
* Aplicaciones en tiempo real.

Sin estado, una aplicación React sería únicamente una interfaz estática.

---

# 🛠 Actividad de Clase

## Reto

Desarrollar un formulario de registro dinámico.

### Requisitos

Campos:

* Nombre
* Correo
* Contraseña

### Funcionalidades

* Actualización en tiempo real.
* Mostrar los datos ingresados.
* Validar longitud mínima del nombre.
* Validar formato básico del correo.
* Validar longitud mínima de contraseña.
* Mostrar mensajes de error dinámicamente.

### Extra

Agregar indicador visual de fortaleza de contraseña.

---

# 📌 Conceptos Clave

* State
* useState
* Hook
* Renderizado
* Eventos
* Formularios controlados
* onChange
* onSubmit
* Validación
* Reactividad

---

# 📚 Recursos Recomendados

## Documentación Oficial

https://react.dev/reference/react/useState

## Gestión de Estado

https://react.dev/learn/state-a-components-memory

## Formularios

https://react.dev/learn/reacting-to-input-with-state

---

# 💡 Reflexión Final

Las Props permiten que los componentes reciban información, pero el State permite que reaccionen a los cambios.

Comprender `useState` es el primer paso para construir aplicaciones verdaderamente interactivas, donde la interfaz responde automáticamente a las acciones del usuario.
