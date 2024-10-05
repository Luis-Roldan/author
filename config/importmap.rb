# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
# pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.0/dist/stimulus.js"
# pin "@hotwired/stimulus-loading", to: "https://ga.jspm.io/npm:@hotwired/stimulus-loading@1.1.0/dist/index.js"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "react", to: "https://ga.jspm.io/npm:react@18.3.1/index.js"
pin "react-dom", to: "https://ga.jspm.io/npm:react-dom@18.3.1/index.js"
# pin_all_from "app/javascript/components", under: "components"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "controllers", to: "controllers/index.js"
pin "home_controller", to: "controllers/home_controller.js"
pin "scheduler", to: "https://ga.jspm.io/npm:scheduler@0.23.2/index.js"
