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
          focus:outline-none
          focus:ring-2
          focus:ring-blue-400
          focus:ring-offset-2
        "
      >
        Agregar
      </button>
    </form>
  );
}

export default TodoForm;