# Pin npm packages by running ./bin/importmap
# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"

pin "react", to: "https://ga.jspm.io/npm:react@18.3.1/index.js"
pin "react-dom", to: "https://ga.jspm.io/npm:react-dom@18.3.1/index.js"

# Pin all from controllers and components directories
pin_all_from "app/javascript/components", under: "components"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true


# pin "react", to: "https://ga.jspm.io/npm:react@18.3.1/index.js"
# pin "react-dom", to: "https://ga.jspm.io/npm:react-dom@18.3.1/index.js"

# pin "application", preload: true
# pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
# pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
# pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
# pin_all_from "app/javascript/controllers", under: "controllers"

# pin "controllers", to: "controllers/index.js"
# pin "home_controller", to: "controllers/home_controller.js"
# pin "scheduler", to: "https://ga.jspm.io/npm:scheduler@0.23.2/index.js"

# pin_all_from "app/javascript/components", under: "components"
