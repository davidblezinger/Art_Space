import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    allBookings: Array
  }

  connect() {
    flatpickr(this.element,
      {
/*         onChange: this.handleChange.bind(this), */
        dateFormat: "Y-m-d",
        disable: this.allBookingsValue
      },
    )
  }

/*   handleChange(selectedDates, dateStr, instance) {
    console.log(selectedDates, dateStr);

  } */
}
