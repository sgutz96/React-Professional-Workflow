# Clase 04 - Eventos y Renderizado

## 🎯 Tema

Gestión de eventos y renderizado dinámico en React.

---

## 📖 Descripción

En esta clase se profundizará en la interacción entre el usuario y la interfaz mediante el manejo de eventos en React. Los estudiantes aprenderán a responder a acciones como clics, cambios en formularios y envíos de información, integrando estos eventos con el estado de la aplicación.

Además, se explorarán técnicas de renderizado dinámico, incluyendo renderizado condicional y generación de listas, permitiendo construir interfaces capaces de adaptarse automáticamente a los cambios de información y a las acciones del usuario.

---

## 🎯 Objetivo General

Desarrollar aplicaciones interactivas utilizando eventos, renderizado condicional y listas dinámicas para crear experiencias de usuario reactivas y escalables.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender el sistema de eventos de React.
* Gestionar interacciones del usuario mediante eventos.
* Aplicar renderizado condicional en diferentes escenarios.
* Mostrar y ocultar elementos dinámicamente.
* Generar interfaces a partir de arreglos de datos.
* Utilizar el método `map()` para renderizar colecciones.
* Implementar claves únicas (`key`) en listas.
* Construir interfaces dinámicas basadas en estado.

---

# 📚 Temas de la Clase

## 1. Reactividad e Interacción

Las aplicaciones modernas reaccionan constantemente a las acciones del usuario.

Ejemplos:

* Clic en botones.
* Envío de formularios.
* Búsquedas en tiempo real.
* Filtrado de información.
* Mostrar u ocultar contenido.
* Agregar o eliminar elementos.

---

## 2. Eventos en React

React utiliza un sistema de eventos similar a JavaScript, pero con una sintaxis adaptada a JSX.

### Eventos comunes

* onClick
* onChange
* onSubmit
* onKeyDown
* onKeyUp
* onMouseEnter
* onMouseLeave
* onFocus
* onBlur

---

## 3. Evento onClick

### Ejemplo

```jsx id="c7m2k4"
function Boton() {
  return (
    <button
      onClick={() =>
        alert("Hola React")
      }
    >
      Saludar
    </button>
  );
}
```

---

## 4. Eventos y useState

```jsx id="v5q8t1"
const [contador, setContador] =
  useState(0);

<button
  onClick={() =>
    setContador(contador + 1)
  }
>
  Incrementar
</button>
```

Cada interacción modifica el estado y React actualiza la interfaz automáticamente.

---

## 5. Renderizado Dinámico

El renderizado dinámico permite que la interfaz cambie según el estado de la aplicación.

```text id="d8w1r5"
Estado
   ↓
Renderizado
   ↓
Interfaz
```

Cuando cambia el estado, cambia la interfaz.

---

## 6. Renderizado Condicional

Permite mostrar contenido dependiendo de una condición.

### Ejemplo

```jsx id="f3x7n2"
{
  usuario
    ? <h2>Bienvenido</h2>
    : <h2>Inicia Sesión</h2>
}
```

---

## 7. Operador AND (&&)

Ideal para mostrar elementos opcionales.

```jsx id="k9u4m6"
{
  cargando &&
  <p>Cargando...</p>
}
```

---

## 8. Operador Ternario

Permite evaluar dos escenarios.

```jsx id="t6p8j3"
{
  edad >= 18
    ? <p>Mayor de edad</p>
    : <p>Menor de edad</p>
}
```

---

## 9. Renderizado de Listas

Las listas permiten generar múltiples elementos a partir de un arreglo.

### Datos

```jsx id="y2v5r7"
const tecnologias = [
  "React",
  "Vue",
  "Angular"
];
```

### Renderizado

```jsx id="p4n8x1"
{
  tecnologias.map(
    (tecnologia) => (
      <li>
        {tecnologia}
      </li>
    )
  )
}
```

---

## 10. La Propiedad Key

React necesita identificar cada elemento de una lista.

### Incorrecto

```jsx id="r8w3m5"
<li>React</li>
<li>Vue</li>
<li>Angular</li>
```

### Correcto

```jsx id="n6q1z4"
{
  tecnologias.map(
    (item, index) => (
      <li key={index}>
        {item}
      </li>
    )
  )
}
```

---

## 11. Listas de Objetos

```jsx id="j3v7t9"
const productos = [
  {
    id: 1,
    nombre: "Mouse"
  },
  {
    id: 2,
    nombre: "Teclado"
  }
];
```

```jsx id="h4m2k8"
{
  productos.map(
    (producto) => (
      <div key={producto.id}>
        {producto.nombre}
      </div>
    )
  )
}
```

---

## 12. Filtrado y Renderizado

### Ejemplo

```jsx id="q7w5e2"
const activos =
productos.filter(
  item => item.activo
);
```

```jsx id="u9r3p1"
{
  activos.map(
    item => (
      <p key={item.id}>
        {item.nombre}
      </p>
    )
  )
}
```

---

## 13. Eventos en Formularios

### Evento onSubmit

```jsx id="l5n8t4"
<form
  onSubmit={guardar}
>
  <button>
    Guardar
  </button>
</form>
```

Evitar recarga:

```jsx id="s2m6v9"
const guardar = (e) => {
  e.preventDefault();
};
```

---

# ⚖️ Comparativas

## JavaScript Vanilla

```javascript id="w4p8k2"
document
.querySelector("#btn")
.addEventListener(
  "click",
  () => {
    console.log("Hola");
  }
);
```

---

## React

```jsx id="m8r1x6"
<button
  onClick={() =>
    console.log("Hola")
  }
>
  Clic
</button>
```

---

## Mostrar Elementos con JavaScript

```javascript id="a3v7t5"
if(usuario){
  mostrarMenu();
}
```

---

## Renderizado Condicional React

```jsx id="e6n2p8"
{
  usuario &&
  <Menu />
}
```

---

## Crear Elementos Manualmente

```javascript id="g5q9w1"
for(
  let i = 0;
  i < datos.length;
  i++
){
  // Crear elemento
}
```

---

## Renderizado con map()

```jsx id="b7k4r2"
{
  datos.map(item =>
    <Card
      key={item.id}
    />
  )
}
```

---

# 🚀 ¿Por Qué es Importante el Renderizado Dinámico?

El renderizado dinámico permite construir aplicaciones modernas donde la interfaz responde automáticamente a los datos y a las acciones del usuario.

Es la base de:

* Redes sociales.
* Sistemas administrativos.
* E-commerce.
* Aplicaciones móviles.
* Dashboards.
* Aplicaciones en tiempo real.
* Plataformas educativas.

---

# 🛠 Actividad de Clase

## Reto

Crear una aplicación de gestión de tareas.

### Requisitos

* Campo para agregar tareas.
* Botón para agregar elementos.
* Mostrar lista de tareas.
* Eliminar tareas.
* Mostrar mensaje cuando no existan tareas.
* Utilizar renderizado condicional.
* Utilizar listas dinámicas con `map()`.

### Extra

Agregar:

* Estado completada/no completada.
* Contador de tareas.
* Filtro por estado.

---

# 📌 Conceptos Clave

* Eventos
* onClick
* onChange
* onSubmit
* Renderizado
* Renderizado condicional
* Operador ternario
* Operador &&
* map()
* key
* Listas dinámicas

---

# 📚 Recursos Recomendados

## Eventos en React

https://react.dev/learn/responding-to-events

## Renderizado Condicional

https://react.dev/learn/conditional-rendering

## Renderizado de Listas

https://react.dev/learn/rendering-lists

---

# 💡 Reflexión Final

Los eventos permiten capturar las acciones del usuario, mientras que el renderizado dinámico permite transformar esas acciones en cambios visuales dentro de la interfaz.

Juntos constituyen uno de los fundamentos más importantes de React y de cualquier aplicación interactiva moderna.
