
const unavailable_dates_handler = () => {


// First we define two variables that are going to grab our inputs field. You can check the ids of the inputs with the Chrome inspector.
const startDateInput = document.getElementById('start_date');
const endDateInput = document.getElementById('end_date');

// Check that the query selector id matches the one you put around your form.
if (startDateInput) {
const unavailableDates = JSON.parse(document.querySelector('#booking-dates').dataset.unavailable)
endDateInput.disabled = true

flatpickr(startDateInput, {
  minDate: "today",
  disable: unavailableDates,
  dateFormat: "Y-m-d",
});

startDateInput.addEventListener("change", (e) => {
  if (startDateInput != "") {
    console.log("end of disable end date")
    endDateInput.disabled = false
  }
  flatpickr(endDateInput, {
    minDate: e.target.value,
    disable: unavailableDates,
    dateFormat: "Y-m-d"
    });
  })
};

};

export { unavailable_dates_handler };
