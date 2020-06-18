# frozen_string_literal: true

say 'Installing Turbolinks...', :green

run('yarn add turbolinks')

say 'Adding Turbolinks to "frontend/javascript/index.js"', :magenta

javascript_import do
  <<~JS
    import Turbolinks from "turbolinks"
  JS
end

append_to_file('frontend/javascript/index.js') do
  <<~JS
    Turbolinks.start()
  JS
end

say 'Turbolinks successfully added', :green
