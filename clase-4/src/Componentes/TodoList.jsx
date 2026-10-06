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