import { Controller } from "@hotwired/stimulus";

export default class HomeController extends Controller {
  connect() {
    console.log("Homepage controller connected");
    // Aquí puedes hacer cualquier lógica adicional cuando el controlador se conecte
  }
}
