import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {
  static targets = ["start", "end"]

  static values = {
    price: Number
  };

  connect() {
  }

  setDate() {
    console.log(this.startTarget.value)
    console.log(this.endTarget.value)
    console.log(this.priceValue)
    if(this.startTarget.value && this.endTarget.value) {
      const endDate = new Date(this.endTarget.value);
      const startDate = new Date(this.startTarget.value)
      const bookingPrice = (endDate.getTime() - startDate.getTime()) * this.priceValue / (1000 * 60 * 60 * 24 * 30)
      console.log(bookingPrice)
    }
  }
}
