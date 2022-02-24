// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.min.css'
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true
  });

  // To keep in case we want ro try again the range directly

  // flatpickr("#range_start", {
  //   altInput: true,
  //   plugins: [new rangePlugin({ input: "#range_end"})]
  // });
}

export { initFlatpickr };
