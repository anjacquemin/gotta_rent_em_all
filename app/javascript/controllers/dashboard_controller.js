import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["bookings"]
  connect() {
    console.log("hello")
  }
  openTab(event) {
    const target = event.currentTarget.dataset.tab;

    const tab = document.querySelector(`#${target}`);

    // this.bookingsTarget.classlist.toggle("active")
    const tab1 = document.querySelector("#current-bookings");
    const tab2 = document.querySelector("#future-bookings");
    const tab3 = document.querySelector("#past-bookings");
    // console.log(tab)
    tab1.classList.add("tabcontent")
    tab2.classList.add("tabcontent")
    tab3.classList.add("tabcontent")
    tab.classList.remove("tabcontent")
  }
}
