# Clase 07 - Context API

## 🎯 Tema

Gestión de estado global en React mediante Context API.

---

## 📖 Descripción

En esta clase los estudiantes aprenderán a compartir información entre múltiples componentes sin necesidad de pasar propiedades manualmente a través de varios niveles de la aplicación. Se introducirá **Context API**, una herramienta nativa de React que permite centralizar datos globales y facilitar la comunicación entre componentes.

A través de ejemplos prácticos se explorarán escenarios comunes como autenticación de usuarios, configuración de temas visuales, preferencias de aplicación y administración de información compartida, comprendiendo las ventajas y limitaciones de esta solución frente a otros gestores de estado.

---

## 🎯 Objetivo General

Implementar Context API para gestionar información global dentro de aplicaciones React, evitando el Prop Drilling y mejorando la organización de los datos compartidos.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender la diferencia entre estado local y estado global.
* Identificar problemas asociados al Prop Drilling.
* Crear y configurar Contextos en React.
* Utilizar Providers para compartir información.
* Consumir datos mediante el Hook `useContext`.
* Diseñar estructuras de datos globales reutilizables.
* Centralizar información compartida dentro de una aplicación.
* Aplicar buenas prácticas para la gestión de estado global.

---

# 📚 Temas de la Clase

## 1. Estado Local vs Estado Global

### Estado Local

La información pertenece únicamente a un componente.

Ejemplos:

* Inputs de formularios.
* Menús desplegables.
* Contadores.
* Estados temporales.

### Estado Global

La información es compartida entre varios componentes.

Ejemplos:

* Usuario autenticado.
* Tema claro u oscuro.
* Idioma.
* Carrito de compras.
* Configuración general.

---

## 2. El Problema del Prop Drilling

Ocurre cuando una propiedad debe atravesar múltiples componentes para llegar a su destino.

### Ejemplo

```text id="p1v4m8"
App
 ↓
Layout
 ↓
Dashboard
 ↓
Sidebar
 ↓
Usuario
```

Cada componente recibe y reenvía información que no necesariamente utiliza.

---

## 3. ¿Qué es Context API?

Context API es una funcionalidad integrada en React que permite compartir información entre componentes sin necesidad de pasar Props manualmente.

### Beneficios

* Menos Prop Drilling.
* Código más limpio.
* Mejor organización.
* Acceso global a información compartida.
* Solución nativa de React.

---

## 4. Creación de un Contexto

### Crear archivo

```jsx id="u3k7n5"
import {
  createContext
} from "react";

export const UsuarioContext =
  createContext();
```

---

## 5. Provider

El Provider distribuye la información a todos los componentes hijos.

```jsx id="m8v2p4"
<UsuarioContext.Provider
  value={datos}
>
  <App />
</UsuarioContext.Provider>
```

---

## 6. Estructura Recomendada

```text id="q5n9r1"
src/
│
├── context/
│   ├── UsuarioContext.jsx
│   └── ThemeContext.jsx
│
├── components/
├── pages/
├── App.jsx
└── main.jsx
```

---

## 7. useContext

Permite acceder a la información compartida.

```jsx id="k2v8m6"
import {
  useContext
} from "react";

import {
  UsuarioContext
} from "./UsuarioContext";
```

```jsx id="r7p4w2"
const usuario =
useContext(
  UsuarioContext
);
```

---

## 8. Ejemplo Básico

### Provider

```jsx id="y4m1n8"
<UsuarioContext.Provider
  value={{
    nombre: "Juan"
  }}
>
  <Dashboard />
</UsuarioContext.Provider>
```

### Consumo

```jsx id="h6q2v5"
const usuario =
useContext(
  UsuarioContext
);

return (
  <h2>
    {usuario.nombre}
  </h2>
);
```

---

## 9. Compartiendo Estado Global

Context API puede trabajar junto con `useState`.

```jsx id="j8w3n7"
const [usuario,
setUsuario] =
useState(null);
```

```jsx id="z5m9p1"
<UsuarioContext.Provider
  value={{
    usuario,
    setUsuario
  }}
>
  {children}
</UsuarioContext.Provider>
```

---

## 10. Casos de Uso Reales

### Autenticación

```text id="n4v7k3"
Usuario
Token
Roles
Permisos
```

---

### Tema Visual

```text id="w2m8r6"
Modo Claro
Modo Oscuro
```

---

### Idioma

```text id="p7n3v4"
Español
Inglés
Portugués
```

---

### Carrito de Compras

```text id="s9m1k5"
Productos
Cantidad
Total
```

---

## 11. Múltiples Contextos

Una aplicación puede tener varios contextos.

```text id="x3v6p8"
AuthContext
ThemeContext
CartContext
LanguageContext
```

---

## 12. Buenas Prácticas

### Hacer

* Crear contextos específicos.
* Organizar Providers.
* Mantener información relacionada agrupada.
* Utilizar Context para datos globales.

### Evitar

* Almacenar toda la aplicación en un único contexto.
* Reemplazar innecesariamente el estado local.
* Compartir datos que solo usa un componente.

---

## 13. Limitaciones de Context API

Aunque es muy útil, Context API no siempre es la mejor solución.

Puede generar:

* Renderizados innecesarios.
* Complejidad en aplicaciones grandes.
* Dificultad para depuración avanzada.

Por ello existen alternativas como:

* Redux Toolkit
* Zustand
* Recoil
* Jotai

---

# ⚖️ Comparativas

## Props Tradicionales

```text id="c5n8v2"
App
 ↓
Header
 ↓
Navbar
 ↓
Perfil
```

Propagación manual de datos.

---

## Context API

```text id="e7m3p6"
Context
   ↓
Cualquier Componente
```

Acceso directo a la información.

---

## Estado Local

```jsx id="k4v1n9"
const [contador,
setContador] =
useState(0);
```

Solo disponible dentro del componente.

---

## Estado Global

```jsx id="m2p7w5"
const usuario =
useContext(
  UsuarioContext
);
```

Disponible en toda la aplicación.

---

## Prop Drilling

```jsx id="q8n4v1"
<App usuario={usuario} />
```

```jsx id="t5m7k2"
<Layout usuario={usuario} />
```

```jsx id="u3p9v6"
<Sidebar usuario={usuario} />
```

---

## Context API

```jsx id="w1n8m4"
const usuario =
useContext(
  UsuarioContext
);
```

Acceso directo.

---

# 🚀 ¿Por Qué es Importante Context API?

A medida que las aplicaciones crecen, la necesidad de compartir información entre componentes aumenta considerablemente.

Context API permite gestionar:

* Usuarios autenticados.
* Configuración global.
* Temas visuales.
* Preferencias del sistema.
* Información compartida.

Es una de las herramientas fundamentales para desarrollar aplicaciones React escalables sin depender inicialmente de librerías externas.

---

# 🛠 Actividad de Clase

## Reto

Construir un sistema básico de autenticación utilizando Context API.

### Requisitos

* Crear un AuthContext.
* Compartir información del usuario.
* Implementar Login y Logout.
* Mostrar información del usuario en diferentes componentes.
* Utilizar `useContext`.

### Componentes Sugeridos

* Login
* Navbar
* Perfil
* Dashboard

### Extra

Agregar:

* Tema claro/oscuro.
* Persistencia con Local Storage.
* Múltiples contextos.
* Protección de rutas utilizando Context API.

---

# 📌 Conceptos Clave

* Estado Global
* Context API
* createContext
* Provider
* Consumer
* useContext
* Prop Drilling
* Compartición de Datos
* Autenticación
* Configuración Global

---

# 📚 Recursos Recomendados

## Context API

https://react.dev/reference/react/createContext

## useContext

https://react.dev/reference/react/useContext

## Compartir Estado

https://react.dev/learn/passing-data-deeply-with-context

---

# 💡 Reflexión Final

El estado local es suficiente para componentes individuales, pero las aplicaciones modernas requieren compartir información entre múltiples vistas y módulos.

Context API ofrece una solución elegante y nativa para gestionar datos globales, reduciendo complejidad y facilitando la construcción de aplicaciones más organizadas y escalables.
