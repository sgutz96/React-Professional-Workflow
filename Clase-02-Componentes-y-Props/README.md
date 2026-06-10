# Clase 02 - Componentes y Props

## 🎯 Tema

Arquitectura modular en React mediante componentes reutilizables y comunicación de datos usando Props.

---

## 📖 Descripción

En esta clase se profundizará en uno de los pilares fundamentales de React: los componentes. Los estudiantes aprenderán a dividir interfaces complejas en piezas pequeñas, independientes y reutilizables.

Además, se introducirá el concepto de **Props (Properties)** como mecanismo para transferir información entre componentes, permitiendo construir interfaces dinámicas, configurables y escalables.

---

## 🎯 Objetivo General

Comprender la arquitectura basada en componentes de React y utilizar Props para crear interfaces modulares, reutilizables y dinámicas.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender el concepto de componente en React.
* Identificar los beneficios de la modularidad en el desarrollo Front-End.
* Crear componentes funcionales reutilizables.
* Utilizar Props para enviar información entre componentes.
* Diseñar interfaces compuestas por múltiples componentes.
* Diferenciar entre componentes estáticos y dinámicos.
* Aplicar buenas prácticas de organización y reutilización de código.

---

# 📚 Temas de la Clase

## 1. Arquitectura Basada en Componentes

### ¿Qué es un componente?

Un componente es una pieza independiente de interfaz que encapsula estructura, comportamiento y presentación.

Ejemplos:

* Navbar
* Footer
* Card
* Botón
* Formulario
* Producto
* Perfil de usuario

---

## 2. Ventajas de la Componentización

### Reutilización

Un componente puede utilizarse múltiples veces.

### Escalabilidad

Las aplicaciones crecen de forma organizada.

### Mantenimiento

Los cambios se realizan en un único lugar.

### Legibilidad

El código resulta más fácil de entender.

### Trabajo Colaborativo

Diferentes desarrolladores pueden trabajar en distintos componentes.

---

## 3. Creación de Componentes Funcionales

### Estructura básica

```jsx
function Saludo() {
  return <h1>Hola Mundo</h1>;
}
```

### Uso del componente

```jsx
function App() {
  return (
    <div>
      <Saludo />
    </div>
  );
}
```

---

## 4. Organización de Componentes

### Estructura recomendada

```text
src/
│
├── components/
│   ├── Navbar.jsx
│   ├── Card.jsx
│   ├── Button.jsx
│   └── Footer.jsx
│
├── App.jsx
└── main.jsx
```

---

## 5. Introducción a Props

### ¿Qué son las Props?

Las Props son propiedades que permiten enviar datos de un componente padre a un componente hijo.

Funcionan de manera similar a los atributos HTML.

---

## 6. Uso Básico de Props

### Componente

```jsx
function Saludo(props) {
  return <h1>Hola {props.nombre}</h1>;
}
```

### Uso

```jsx
<Saludo nombre="Juan" />
<Saludo nombre="María" />
<Saludo nombre="Carlos" />
```

Resultado:

```text
Hola Juan
Hola María
Hola Carlos
```

---

## 7. Desestructuración de Props

### Forma tradicional

```jsx
function Producto(props) {
  return <h2>{props.nombre}</h2>;
}
```

### Forma recomendada

```jsx
function Producto({ nombre }) {
  return <h2>{nombre}</h2>;
}
```

---

## 8. Props de Diferentes Tipos

### Texto

```jsx
<Card titulo="React" />
```

### Número

```jsx
<Card precio={50000} />
```

### Booleano

```jsx
<Card disponible={true} />
```

### Array

```jsx
<Card categorias={["Tecnología", "Programación"]} />
```

### Objeto

```jsx
<Card usuario={usuario} />
```

---

## 9. Componentes Reutilizables

### Ejemplo

```jsx
function Card({ titulo, descripcion }) {
  return (
    <div>
      <h2>{titulo}</h2>
      <p>{descripcion}</p>
    </div>
  );
}
```

Uso:

```jsx
<Card
  titulo="React"
  descripcion="Biblioteca para interfaces"
/>

<Card
  titulo="Vue"
  descripcion="Framework progresivo"
/>
```

---

## 10. Flujo de Datos en React

React utiliza un flujo de datos unidireccional.

```text
Padre
  ↓
Hijo
  ↓
Nieto
```

Las Props siempre viajan desde componentes superiores hacia componentes inferiores.

---

# ⚖️ Comparativas

## HTML Repetitivo

```html
<div class="card">
  <h2>Producto 1</h2>
</div>

<div class="card">
  <h2>Producto 2</h2>
</div>

<div class="card">
  <h2>Producto 3</h2>
</div>
```

---

## React con Componentes

```jsx
<Card nombre="Producto 1" />
<Card nombre="Producto 2" />
<Card nombre="Producto 3" />
```

---

## JavaScript Tradicional

```javascript
const usuario = {
  nombre: "Juan"
};

mostrarUsuario(usuario);
```

---

## React con Props

```jsx
<Usuario nombre="Juan" />
```

---

# 🚀 ¿Por Qué Son Importantes los Componentes?

Los componentes son la base de React y de la mayoría de frameworks modernos.

Permiten:

* Construir aplicaciones escalables.
* Reutilizar funcionalidades.
* Reducir duplicación de código.
* Mejorar la mantenibilidad.
* Facilitar el trabajo en equipo.

---

# 🛠 Actividad de Clase

## Reto

Construir una galería de productos utilizando componentes reutilizables.

### Requisitos

* Crear un componente Card.
* Mostrar mínimo 6 productos.
* Cada producto debe recibir información mediante Props.
* Incluir:

  * Nombre
  * Imagen
  * Precio
  * Descripción

### Extra

Agregar categorías y etiquetas utilizando Props adicionales.

---

# 📌 Conceptos Clave

* Componentes
* Reutilización
* Modularidad
* Props
* Componentes funcionales
* Flujo de datos
* Componentes padre
* Componentes hijo
* Desestructuración

---

# 📚 Recursos Recomendados

## Documentación Oficial

https://react.dev/learn/passing-props-to-a-component

## Componentes

https://react.dev/learn/your-first-component

## Props

https://react.dev/learn/passing-props-to-a-component

---

# 💡 Reflexión Final

La verdadera potencia de React no está en crear páginas, sino en construir componentes reutilizables que puedan combinarse para formar interfaces complejas.

Pensar en componentes es aprender a diseñar software Front-End de manera modular, escalable y profesional.
