import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import TodoForm from './Componentes/TodoForm'
import TodoList from './Componentes/TodoList'
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
    setTodos(todos.filter((todo) => todo.id !== id));
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