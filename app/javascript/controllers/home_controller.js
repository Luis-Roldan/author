import { application } from "./application";
import { createRoot } from "react-dom/client";
import App from "../components/App"; // Asegúrate de que esta ruta sea correcta

class HomeController {
  connect() {
    const root = createRoot(document.getElementById("react-root")); // Usa el ID del contenedor
    root.render(<App />);
  }
}

// Registra el controlador
application.register("home", HomeController);
