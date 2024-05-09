import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["passengers", "template"]

    addPassenger() {
        let content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
        this.passengersTarget.insertAdjacentHTML('beforeend', content)
    }

    removePassenger(event) {
        let wrapper = event.target.closest('.passenger-wrapper')
        let passengerWrappers = this.passengersTarget.querySelectorAll('.passenger-wrapper')
        if (wrapper && passengerWrappers.length > 1) {
            wrapper.remove()
        }
    }
}
