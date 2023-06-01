import { Controller } from "@hotwired/stimulus"

Turbo.connectStreamSource("/emails/stream")

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}
