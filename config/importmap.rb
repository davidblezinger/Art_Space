# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@2.15.0/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js"
pin "@mapbox/mapbox-gl-geocoder", to: "https://ga.jspm.io/npm:@mapbox/mapbox-gl-geocoder@5.0.1/lib/index.js"
pin "#lib/client.js", to: "https://ga.jspm.io/npm:@mapbox/mapbox-sdk@0.13.7/lib/browser/browser-client.js"
pin "@mapbox/fusspot", to: "https://ga.jspm.io/npm:@mapbox/fusspot@0.4.0/lib/index.js"
pin "@mapbox/mapbox-sdk", to: "https://ga.jspm.io/npm:@mapbox/mapbox-sdk@0.13.7/index.js"
pin "@mapbox/mapbox-sdk/services/geocoding", to: "https://ga.jspm.io/npm:@mapbox/mapbox-sdk@0.13.7/services/geocoding.js"
pin "@mapbox/parse-mapbox-token", to: "https://ga.jspm.io/npm:@mapbox/parse-mapbox-token@0.2.0/index.js"
pin "base-64", to: "https://ga.jspm.io/npm:base-64@0.1.0/base64.js"
pin "eventemitter3", to: "https://ga.jspm.io/npm:eventemitter3@3.1.2/index.js"
pin "events", to: "https://ga.jspm.io/npm:events@3.3.0/events.js"
pin "fuzzy", to: "https://ga.jspm.io/npm:fuzzy@0.1.3/lib/fuzzy.js"
pin "is-plain-obj", to: "https://ga.jspm.io/npm:is-plain-obj@1.1.0/index.js"
pin "lodash.debounce", to: "https://ga.jspm.io/npm:lodash.debounce@4.0.8/index.js"
pin "nanoid", to: "https://ga.jspm.io/npm:nanoid@3.3.6/index.browser.js"
pin "subtag", to: "https://ga.jspm.io/npm:subtag@0.5.0/subtag.js"
pin "suggestions", to: "https://ga.jspm.io/npm:suggestions@1.7.1/index.js"
pin "xtend", to: "https://ga.jspm.io/npm:xtend@4.0.2/immutable.js"
