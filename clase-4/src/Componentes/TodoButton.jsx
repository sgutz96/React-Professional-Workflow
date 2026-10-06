function TodoButton({ children, onClick }) {
  return (
    <button
      onClick={onClick}
      className="
        px-4 py-2
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