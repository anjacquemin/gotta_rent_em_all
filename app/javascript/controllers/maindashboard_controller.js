import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  // static targets = ["bookings"]
  connect() {
    console.log("hello")
  }
  openTab(event) {
    const target = event.currentTarget.dataset.tab;

    const tab = document.querySelector(`#${target}`);

    // this.bookingsTarget.classlist.toggle("active")
    const tab1 = document.querySelector("#my-pokemons");
    const tab2 = document.querySelector("#my-bookings");
    console.log(target)
    console.log(tab)
    const button4 = document.querySelector("#button4");
    const button5 = document.querySelector("#button5");

    tab1.classList.add("tabcontent")
    tab2.classList.add("tabcontent")
    tab.classList.remove("tabcontent")

    button4.classList.remove("tabgrey")
    button5.classList.remove("tabgrey")
    console.log(event.currentTarget)
    event.currentTarget.classList.add("tabgrey")
  }
}
