import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Object
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }
  #addMarkersToMap() {
    console.log("Test");
    console.log(this.markersValue)
      new mapboxgl.Marker()
        .setLngLat([ this.markersValue.lng, this.markersValue.lat ])
        .addTo(this.map)
  }
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue = bounds.extend([ this.markersValue.lng, this.markersValue.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 6.5, duration: 0 })
  }
}
