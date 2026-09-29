import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Welcome from './Componentes/Welcome'



function App() {

  return (
    <>
      <section id="center">
        <h1 class="text-3xl font-bold underline">
          Hello world!
        </h1>

        <Welcome name="Sebastian" />


        <div class="mx-auto flex max-w-sm items-center gap-x-4 rounded-xl bg-white p-6 shadow-lg outline outline-black/5 dark:bg-slate-800 dark:shadow-none dark:-outline-offset-1 dark:outline-white/10">
          <img class="size-12 shrink-0" src="/img/logo.svg" alt="ChitChat Logo" />
          <div>
            <div class="text-xl font-medium text-black dark:text-white">ChitChat</div>
            <p class="text-gray-500 dark:text-gray-400">You have a new message!</p>
          </div>
        </div>

      </section>
    </>
  )
}

export default App
