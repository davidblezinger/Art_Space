import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values = {
    allBookings: Array
  }

  connect() {
    flatpickr(this.element, {
      dateFormat: "Y-m-d",
      disable: this.allBookingsValue
  })

  console.log(this.allBookingsValue)
  console.log("Hello")
  }


}
