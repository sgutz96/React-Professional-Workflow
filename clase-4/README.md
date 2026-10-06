# 🚀 Clase 4 — Todo List con React + Tailwind CSS

En esta clase vamos a construir una aplicación **Todo List** utilizando **React**, **Vite** y **Tailwind CSS**.

El objetivo es aprender a:

* Crear un proyecto React desde cero.
* Instalar y configurar Tailwind CSS.
* Crear componentes reutilizables.
* Trabajar con `useState`.
* Manejar eventos en React.
* Pasar información mediante `props`.
* Agregar tareas.
* Eliminar tareas.
* Aplicar estilos utilizando Tailwind CSS.
* Organizar un proyecto React por componentes.

---

# 1. Requisitos

Antes de comenzar debemos tener instalado:

* Node.js
* npm
* Visual Studio Code
* Git (recomendado)

Podemos comprobar que Node.js y npm están instalados ejecutando:

```bash
node -v
```

```bash
npm -v
```

---

# 2. Crear el proyecto con Vite

Abrimos una terminal y ejecutamos:

```bash
npm create vite@latest clase-4
```

Vite nos preguntará algunas opciones.

Seleccionamos:

```text
Project name:
clase-4

Select a framework:
React

Select a variant:
JavaScript
```

También podemos crear el proyecto directamente con:

```bash
npm create vite@latest clase-4 -- --template react
```

---

# 3. Entrar al proyecto

Una vez creado el proyecto:

```bash
cd clase-4
```

---

# 4. Instalar las dependencias

Instalamos las dependencias iniciales:

```bash
npm install
```

---

# 5. Instalar Tailwind CSS

Instalamos Tailwind CSS y sus dependencias para Vite:

```bash
npm install tailwindcss @tailwindcss/vite
```

---

# 6. Configurar Tailwind

Abrimos:

```text
vite.config.js
```

Y configuramos Tailwind:

```js
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [
    react(),
    tailwindcss(),
  ],
})
```

---

# 7. Importar Tailwind

Abrimos:

```text
src/index.css
```

Eliminamos el contenido existente y agregamos:

```css
@import "tailwindcss";
```

Con esto Tailwind queda disponible en nuestro proyecto.

---

# 8. Ejecutar el proyecto

Ahora podemos iniciar el servidor de desarrollo:

```bash
npm run dev
```

Vite mostrará una dirección similar a:

```text
http://localhost:5173/
```

Abrimos esa dirección en el navegador.

---

# 9. Limpiar el proyecto

Vite crea algunos archivos que no necesitamos para nuestro ejercicio.

Podemos eliminar los recursos que vienen de ejemplo y dejar una estructura más sencilla:

```text
clase-4/
│
├── public/
│
├── src/
│   ├── assets/
│   ├── Componentes/
│   │   ├── TodoForm.jsx
│   │   ├── TodoList.jsx
│   │   └── TodoButton.jsx
│   │
│   ├── App.jsx
│   ├── index.css
│   └── main.jsx
│
├── package.json
├── vite.config.js
└── index.html
```

---

# 10. ¿Qué vamos a construir?

Nuestra aplicación tendrá tres componentes principales:

```text
App
│
├── TodoForm
│
└── TodoList
    │
    └── TodoButton
```

### App

Será el componente principal.

Se encargará de:

* Guardar las tareas.
* Agregar tareas.
* Eliminar tareas.
* Compartir información con los demás componentes.

### TodoForm

Se encargará de:

* Mostrar el campo de texto.
* Permitir escribir una tarea.
* Enviar la nueva tarea.

### TodoList

Se encargará de:

* Mostrar las tareas.
* Recorrer el arreglo de tareas.
* Mostrar cada tarea.
* Permitir eliminar una tarea.

### TodoButton

Será un componente reutilizable para nuestros botones.

---

# 11. Crear la carpeta de componentes

Dentro de:

```text
src/
```

creamos:

```text
Componentes
```

Dentro de esta carpeta crearemos:

```text
TodoForm.jsx
TodoList.jsx
TodoButton.jsx
```

---

# 12. Crear TodoButton

Archivo:

```text
src/Componentes/TodoButton.jsx
```

Código:

```jsx
function TodoButton({ children, onClick }) {
  return (
    <button
      onClick={onClick}
      className="
        px-4
        py-2
        bg-blue-600
        text-white
        font-semibold
        rounded-lg
        shadow-sm
        transition-all
        duration-200
        hover:bg-blue-700
        hover:shadow-md
        active:scale-95
        focus:outline-none
        focus:ring-2
        focus:ring-blue-400
        focus:ring-offset-2
      "
    >
      {children}
    </button>
  );
}

export default TodoButton;
```

Aquí aprendemos a crear un **componente reutilizable**.

El contenido del botón llega mediante:

```jsx
children
```

Mientras que la acción del botón llega mediante:

```jsx
onClick
```

---

# 13. Crear TodoForm

Archivo:

```text
src/Componentes/TodoForm.jsx
```

Código:

```jsx
import { useState } from "react";

function TodoForm({ onAdd }) {
  const [text, setText] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();

    if (text.trim() === "") return;

    onAdd(text);
    setText("");
  };

  return (
    <form
      onSubmit={handleSubmit}
      className="flex flex-col sm:flex-row gap-3 w-full"
    >
      <input
        type="text"
        placeholder="Escribe una tarea..."
        value={text}
        onChange={(e) => setText(e.target.value)}
        className="
          flex-1
          px-4
          py-3
          bg-white
          border
          border-gray-300
          rounded-xl
          text-gray-800
          placeholder-gray-400
          outline-none
          transition
          focus:border-blue-500
          focus:ring-2
          focus:ring-blue-200
        "
      />

      <button
        type="submit"
        className="
          px-6
          py-3
          bg-blue-600
          text-white
          font-semibold
          rounded-xl
          shadow-sm
          transition-all
          duration-200
          hover:bg-blue-700
          hover:shadow-md
          active:scale-95
        "
      >
        Agregar
      </button>
    </form>
  );
}

export default TodoForm;
```

---

# 14. Entender useState

En este componente utilizamos:

```jsx
const [text, setText] = useState("");
```

Tenemos dos elementos:

### `text`

Contiene el valor actual del campo.

### `setText`

Permite modificar ese valor.

Cuando el usuario escribe:

```jsx
onChange={(e) => setText(e.target.value)}
```

actualizamos el estado.

Por ejemplo:

```text
Usuario escribe:

"Comprar leche"

        ↓

text

"Comprar leche"
```

---

# 15. Crear TodoList

Archivo:

```text
src/Componentes/TodoList.jsx
```

Código:

```jsx
import TodoButton from "./TodoButton";

function TodoList({ todos, onDelete }) {
  return (
    <ul className="flex flex-col gap-3 mt-6">
      {todos.map((todo) => (
        <li
          key={todo.id}
          className="
            flex
            items-center
            justify-between
            gap-4
            p-4
            bg-white
            border
            border-gray-200
            rounded-xl
            shadow-sm
            hover:shadow-md
            transition-shadow
          "
        >
          <span className="text-gray-800 font-medium">
            {todo.text}
          </span>

          <TodoButton onClick={() => onDelete(todo.id)}>
            Eliminar
          </TodoButton>
        </li>
      ))}
    </ul>
  );
}

export default TodoList;
```

---

# 16. ¿Qué hace `.map()`?

Tenemos un arreglo:

```js
todos
```

Por ejemplo:

```js
[
  {
    id: 1,
    text: "Estudiar React"
  },
  {
    id: 2,
    text: "Aprender Tailwind"
  }
]
```

Utilizamos:

```jsx
todos.map((todo) => ...)
```

para transformar cada elemento en HTML:

```text
Estudiar React       [Eliminar]

Aprender Tailwind    [Eliminar]
```

---

# 17. Crear el App.jsx

Finalmente conectamos todos nuestros componentes.

Archivo:

```text
src/App.jsx
```

Código:

```jsx
import { useState } from "react";

import TodoForm from "./Componentes/TodoForm";
import TodoList from "./Componentes/TodoList";

function App() {
  const [todos, setTodos] = useState([]);

  // Agregar tarea
  const addTodo = (text) => {
    const newTodo = {
      id: Date.now(),
      text: text,
    };

    setTodos([...todos, newTodo]);
  };

  // Eliminar tarea
  const deleteTodo = (id) => {
    setTodos(
      todos.filter((todo) => todo.id !== id)
    );
  };

  return (
    <main className="min-h-screen bg-gray-100 flex items-center justify-center p-6">
      <section
        className="
          w-full
          max-w-xl
          bg-white
          rounded-2xl
          shadow-lg
          p-6
          sm:p-8
        "
      >
        <header className="mb-6">
          <h1 className="text-3xl font-bold text-gray-900">
            Todo List
          </h1>

          <p className="mt-2 text-gray-500">
            Organiza tus tareas pendientes
          </p>
        </header>

        <TodoForm onAdd={addTodo} />

        <TodoList
          todos={todos}
          onDelete={deleteTodo}
        />
      </section>
    </main>
  );
}

export default App;
```

---

# 18. Flujo de información

Nuestra aplicación funciona de esta manera:

```text
                 APP
                  │
        ┌─────────┴─────────┐
        │                   │
        ▼                   ▼
   TodoForm             TodoList
        │                   │
        │                   │
     onAdd              onDelete
        │                   │
        └─────────┬─────────┘
                  ▼
                todos
```

El estado principal está en `App`.

```jsx
const [todos, setTodos] = useState([]);
```

---

# 19. Agregar una tarea

Cuando escribimos:

```text
Comprar mercado
```

y presionamos:

```text
Agregar
```

`TodoForm` ejecuta:

```jsx
onAdd(text);
```

Esto llama a:

```jsx
addTodo(text);
```

en `App`.

Se crea:

```js
const newTodo = {
  id: Date.now(),
  text: text
};
```

Y se agrega al estado:

```jsx
setTodos([...todos, newTodo]);
```

---

# 20. Eliminar una tarea

Cuando presionamos:

```text
Eliminar
```

se ejecuta:

```jsx
onDelete(todo.id)
```

Esto llama a:

```jsx
deleteTodo(id)
```

Y utilizamos:

```jsx
todos.filter(todo => todo.id !== id)
```

para crear un nuevo arreglo sin la tarea seleccionada.

---

# 21. Conceptos aprendidos

Durante esta clase trabajamos:

### React

* Componentes
* `useState`
* Props
* Eventos
* Renderizado dinámico
* `.map()`
* `.filter()`

### JavaScript

* Arrays
* Objetos
* Funciones
* Arrow functions
* Spread operator
* Métodos de arrays

### Tailwind CSS

* `flex`
* `gap`
* `padding`
* `margin`
* `rounded`
* `shadow`
* `hover`
* `focus`
* `responsive design`

---

# 22. Reto de la clase 🎯

Una vez terminada la aplicación básica, debemos agregar una nueva funcionalidad:

## Marcar tarea como completada

La aplicación debe permitir:

```text
☐ Estudiar React

☑ Aprender Tailwind

☐ Crear proyecto
```

Cuando una tarea esté completada, debe aparecer tachada:

```text
~~Aprender Tailwind~~
```

### Requerimientos

* Agregar un estado `completed`.
* Crear una función para cambiar el estado.
* Permitir hacer clic sobre una tarea.
* Aplicar estilos diferentes cuando esté completada.
* Mantener la opción de eliminar.

---

# 23. Resultado final

Al finalizar tendremos una aplicación:

```text
┌────────────────────────────────────┐
│                                    │
│  Todo List                         │
│  Organiza tus tareas pendientes    │
│                                    │
│  ┌──────────────────────┐ ┌─────┐ │
│  │ Escribe una tarea... │ │ +   │ │
│  └──────────────────────┘ └─────┘ │
│                                    │
│  ┌──────────────────────────────┐  │
│  │ ☐ Estudiar React     Eliminar│  │
│  └──────────────────────────────┘  │
│                                    │
│  ┌──────────────────────────────┐  │
│  │ ☑ Aprender Tailwind  Eliminar│  │
│  └──────────────────────────────┘  │
│                                    │
└────────────────────────────────────┘
```

---

# 📚 Comandos principales

Crear proyecto:

```bash
npm create vite@latest clase-4
```

Entrar al proyecto:

```bash
cd clase-4
```

Instalar dependencias:

```bash
npm install
```

Instalar Tailwind:

```bash
npm install tailwindcss @tailwindcss/vite
```

Ejecutar:

```bash
npm run dev
```

---

# 🧠 Concepto principal de la clase

La idea principal de esta clase es entender que una aplicación React puede dividirse en **componentes pequeños y reutilizables**, mientras que el estado permite controlar la información que cambia durante la interacción del usuario.

```text
          ESTADO
             │
             ▼
        ┌─────────┐
        │   App   │
        └────┬────┘
             │
       ┌─────┴─────┐
       ▼           ▼
     Form         List
       │           │
       ▼           ▼
    Agregar      Mostrar
                 Eliminar
                 Completar
```

> **React controla la lógica y el estado.
> Tailwind controla la presentación visual.**
