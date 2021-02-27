import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["btn"]

  toggleBtn() {
    this.element.classList.remove("btn-light")
    this.element.classList.add("btn-primary")
  }
}