import React from "react";
import { createRoot } from "react-dom/client";
import App from "../components/App";

// Manejador tradicional
document.addEventListener("turbo:load", () => {
  const rootElement = document.getElementById("react-root");
  if (rootElement) {
    const root = createRoot(rootElement);
    root.render(<App />);
  }
});
