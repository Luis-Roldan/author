import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="react"
export default class extends Controller {
  connect() {
    console.log("conected react controller");


  }
}
