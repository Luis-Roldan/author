import React from "react";
import { createRoot } from "react-dom/client";
import App from "../components/App"; // Importas el componente App

document.addEventListener("turbo:load", () => {
  const rootElement = document.getElementById("react-app");
  if (rootElement) {
    const root = createRoot(rootElement);
    root.render(<App />); // Aquí renderizas la aplicación React
  }
});
