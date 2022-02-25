// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

import { initFlatpickr } from "../plugins/flatpicker";
import { unavailable_dates_handler } from "../plugins/unavailable_dates_handler";

import { initSweetalert } from '../plugins/init_sweetalert';


document.addEventListener("turbolinks:load", () => {
  initFlatpickr();
  unavailable_dates_handler();
  initSweetalert('#sweet-alert-demo', {
    title: "Confirmation",
    text: "Are your sure you want to rent this pokemon ?",
    icon: "info"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#submit_form input');
      console.log(link)
      console.log(value)
      console.log("dans le sweetalert")
      link.click();
    }
  });
});
