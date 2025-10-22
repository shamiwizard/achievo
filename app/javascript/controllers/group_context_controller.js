import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    url: String
  }

  updateGroup(event) {
    const urlWithGroupId = `${this.urlValue}/${event.target.value}`;
    Turbo.visit(urlWithGroupId)
  }
}
