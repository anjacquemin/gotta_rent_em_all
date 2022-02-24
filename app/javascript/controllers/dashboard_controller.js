import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["bookings"]
  connect() {
    console.log("hello")
  }
  openTab(event) {
    const target = event.currentTarget.dataset.tab;
    // this.bookingsTarget.classlist.toggle("active")
    const tab = document.querySelector(`#${target}`);
    // console.log(tab)
    tab.classList.add("active")
  }
}
