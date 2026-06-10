# Clase 09 - Custom Hooks

## 🎯 Tema

Reutilización de lógica mediante la creación de Custom Hooks en React.

---

## 📖 Descripción

En esta clase los estudiantes aprenderán a encapsular y reutilizar lógica de negocio utilizando **Custom Hooks**. Se explorará cómo extraer funcionalidades repetitivas de los componentes para construir soluciones más limpias, mantenibles y escalables.

A través de ejemplos prácticos se desarrollarán Hooks personalizados para formularios, consumo de APIs, almacenamiento local, temporizadores y otras funcionalidades comunes, comprendiendo cómo React permite compartir comportamiento sin duplicar código.

---

## 🎯 Objetivo General

Diseñar e implementar Custom Hooks para reutilizar lógica de aplicación y mejorar la organización del código en proyectos React.

---

## 🏆 Resultados de Aprendizaje

Al finalizar la clase el estudiante estará en capacidad de:

* Comprender qué es un Custom Hook.
* Identificar lógica reutilizable dentro de una aplicación.
* Crear Hooks personalizados siguiendo las convenciones de React.
* Reutilizar funcionalidades entre múltiples componentes.
* Integrar Custom Hooks con `useState`, `useEffect` y otros Hooks.
* Mejorar la mantenibilidad y escalabilidad del código.
* Aplicar principios de modularidad y reutilización.
* Diseñar soluciones reutilizables para diferentes escenarios.

---

# 📚 Temas de la Clase

## 1. ¿Por Qué Crear Custom Hooks?

En aplicaciones reales es común repetir lógica en múltiples componentes.

### Ejemplos

* Formularios.
* Validaciones.
* Consumo de APIs.
* Temporizadores.
* Gestión de autenticación.
* Local Storage.
* Manejo de ventanas y eventos.

Duplicar esta lógica aumenta la complejidad y dificulta el mantenimiento.

---

## 2. ¿Qué es un Custom Hook?

Un Custom Hook es una función JavaScript que utiliza Hooks de React y permite compartir lógica entre componentes.

### Características

* Siempre comienza con la palabra `use`.
* Puede utilizar otros Hooks.
* Devuelve datos o funcionalidades reutilizables.
* No renderiza interfaces.

---

## 3. Diferencia Entre Componente y Hook

### Componente

Renderiza interfaz.

```jsx id="c7m4k2"
function Card() {
  return <h2>Producto</h2>;
}
```

---

### Custom Hook

Comparte lógica.

```jsx id="p3v8n1"
function useContador() {
  // lógica
}
```

---

## 4. Estructura Recomendada

```text id="r8m2v6"
src/
│
├── hooks/
│   ├── useFetch.js
│   ├── useForm.js
│   ├── useLocalStorage.js
│   └── useCounter.js
│
├── components/
├── pages/
└── App.jsx
```

---

## 5. Primer Custom Hook

### useCounter

```jsx id="m4v7k8"
import {
  useState
} from "react";

function useCounter() {

  const [count,
  setCount] =
  useState(0);

  const increment =
  () => {
    setCount(
      count + 1
    );
  };

  return {
    count,
    increment
  };
}
```

---

### Uso

```jsx id="t9n3p5"
const {
  count,
  increment
} = useCounter();
```

---

## 6. Custom Hook para Formularios

### Problema

Muchos formularios repiten lógica de captura de datos.

---

### Hook

```jsx id="x5m8v1"
function useForm(
  initialValues
) {

  const [values,
  setValues] =
  useState(
    initialValues
  );

  const handleChange =
  (e) => {

    setValues({
      ...values,
      [e.target.name]:
      e.target.value
    });

  };

  return {
    values,
    handleChange
  };
}
```

---

## 7. Uso del Hook

```jsx id="n2v7k4"
const {
  values,
  handleChange
} = useForm({
  nombre: "",
  correo: ""
});
```

---

## 8. Custom Hook para APIs

Uno de los casos más comunes.

### useFetch

```jsx id="h6m1p9"
function useFetch(url) {

  const [data,
  setData] =
  useState(null);

  useEffect(() => {

    fetch(url)
      .then(res =>
        res.json()
      )
      .then(setData);

  }, [url]);

  return data;
}
```

---

### Uso

```jsx id="q8v3n5"
const usuarios =
useFetch(
  apiUrl
);
```

---

## 9. Custom Hook para Local Storage

### Hook

```jsx id="w4m9k2"
function useLocalStorage(
  key,
  initialValue
) {

  const [value,
  setValue] =
  useState(
    initialValue
  );

  useEffect(() => {

    localStorage.setItem(
      key,
      JSON.stringify(value)
    );

  }, [value]);

  return [
    value,
    setValue
  ];
}
```

---

## 10. Composición de Hooks

Los Custom Hooks pueden utilizar otros Hooks.

```text id="j3v8p1"
useState
     ↓
useEffect
     ↓
Custom Hook
     ↓
Componente
```

Esto permite construir funcionalidades complejas de forma modular.

---

## 11. Casos de Uso Reales

### Formularios

* Registro.
* Login.
* Contacto.

### APIs

* Usuarios.
* Productos.
* Noticias.

### Persistencia

* Preferencias.
* Temas.
* Configuración.

### Utilidades

* Temporizadores.
* Geolocalización.
* Eventos del navegador.

---

## 12. Ventajas de los Custom Hooks

### Reutilización

Una sola lógica para múltiples componentes.

### Organización

Separación entre interfaz y comportamiento.

### Escalabilidad

Facilita el crecimiento del proyecto.

### Mantenimiento

Cambios centralizados.

### Legibilidad

Código más limpio y comprensible.

---

## 13. Buenas Prácticas

### Hacer

* Nombrar Hooks con prefijo `use`.
* Mantener responsabilidades claras.
* Documentar funcionalidades complejas.
* Crear Hooks reutilizables.

### Evitar

* Hooks demasiado grandes.
* Lógica específica difícil de reutilizar.
* Mezclar lógica y presentación.
* Duplicar Hooks similares.

---

## 14. Relación con Arquitecturas Modernas

Los Custom Hooks permiten aplicar principios de:

* Modularidad.
* Reutilización.
* Clean Code.
* Separation of Concerns.
* Arquitectura escalable.

Son una de las características más poderosas del ecosistema React.

---

# ⚖️ Comparativas

## Código Duplicado

```jsx id="k2m7v9"
Componente A
↓
Lógica de API

Componente B
↓
Lógica de API

Componente C
↓
Lógica de API
```

---

## Custom Hook

```jsx id="s5v3n1"
useFetch()
     ↓
Componente A

useFetch()
     ↓
Componente B

useFetch()
     ↓
Componente C
```

---

## Sin Hook

```jsx id="u7m2k4"
useState()
useEffect()
Validaciones()
Eventos()
```

Repetidos en varios componentes.

---

## Con Hook

```jsx id="f8v5p2"
const datos =
useFetch(url);
```

Código más limpio.

---

## Lógica Dentro del Componente

```jsx id="p4m8n6"
Formulario
+
Validaciones
+
Eventos
+
Estados
```

---

## Lógica Encapsulada

```jsx id="z9v1k3"
Formulario
      ↓
useForm()
```

---

# 🚀 ¿Por Qué son Importantes los Custom Hooks?

Las aplicaciones profesionales contienen gran cantidad de lógica reutilizable.

Los Custom Hooks permiten:

* Compartir comportamiento.
* Reducir duplicación.
* Mejorar organización.
* Facilitar mantenimiento.
* Construir aplicaciones escalables.

Son una de las herramientas más utilizadas en proyectos React modernos.

---

# 🛠 Actividad de Clase

## Reto

Desarrollar una biblioteca de Custom Hooks reutilizables.

### Requisitos

Crear:

* useCounter
* useForm
* useFetch

Cada Hook debe ser reutilizado en al menos dos componentes distintos.

---

### Funcionalidades

#### useCounter

* Incrementar.
* Decrementar.
* Reiniciar.

#### useForm

* Captura dinámica de campos.
* Actualización automática.

#### useFetch

* Consumo de API.
* Estado de carga.
* Estado de error.

---

### Extra

Implementar:

* useLocalStorage
* useToggle
* useTheme
* useDebounce

---

# 📌 Conceptos Clave

* Custom Hook
* Reutilización
* Modularidad
* Encapsulación
* useState
* useEffect
* useForm
* useFetch
* Local Storage
* Arquitectura React

---

# 📚 Recursos Recomendados

## Custom Hooks

https://react.dev/learn/reusing-logic-with-custom-hooks

## Reutilización de Lógica

https://react.dev/learn/reusing-logic-with-custom-hooks

## Hooks

https://react.dev/reference/react

---

# 💡 Reflexión Final

Los componentes permiten reutilizar interfaces, mientras que los Custom Hooks permiten reutilizar comportamiento.

Dominar los Hooks personalizados es un paso importante hacia el desarrollo profesional con React, ya que permite construir aplicaciones más limpias, organizadas y preparadas para crecer.
