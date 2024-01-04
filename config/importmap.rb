# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus-character-counter", to: "stimulus-character-counter.js"
pin "stimulus-sortable", to: "stimulus-sortable.js"
pin "sortablejs", to: "sortablejs.js"
pin "@rails/request.js", to: "rails-request.js"
