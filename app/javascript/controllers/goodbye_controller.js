import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Bye Bye World! un arrivederci da Flavio. *_*"
  }
}
