import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {
  static targets = ["start", "end", "displayPrice"]

  static values = {
    price: Number
  };

  connect() {
  }

  setDate() {
    if(this.startTarget.value && this.endTarget.value) {
      const endDate = new Date(this.endTarget.value);
      const startDate = new Date(this.startTarget.value)
      const bookingPrice = ((endDate.getTime() - startDate.getTime()) * this.priceValue / (1000 * 60 * 60 * 24 * 30)).toFixed(2)
      const bookingPriceDisplay = `<h3>Booking Price: $${bookingPrice}</h3>`
      this.displayPriceTarget.innerHTML = ""
      this.displayPriceTarget.insertAdjacentHTML("afterbegin", bookingPriceDisplay)
    }
  }
}
