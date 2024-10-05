import { application } from "./application";
import { createRoot } from "react-dom/client"; // Importar createRoot
import App from "../components/App"; // Asegúrate de que la ruta sea correcta

class HomeController {
  connect() {
    console.log("HomeController conectado"); // Mensaje para depuración
    const root = createRoot(document.getElementById("react-root")); // Usa el ID de tu div
    root.render(<App />);
  }
}

application.register("home", HomeController);
