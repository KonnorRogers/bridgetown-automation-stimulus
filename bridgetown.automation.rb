# frozen_string_literal: true

require 'fileutils'

say 'Installing Stimulus...', :green

run('yarn add stimulus')

say 'Adding Stimulus to "frontend/javascript/index.js"...', :magenta

javascript_import do
  <<~JS
    import { Application } from "stimulus"
    import { definitionsFromContext } from "stimulus/webpack-helpers"
  JS
end

append_to_file('frontend/javascript/index.js') do
  <<~JS
    const application = Application.start()
    const context = require.context("./controllers", true, /\.js$/)
    application.load(definitionsFromContext(context))
  JS
end

say 'Creating a `./frontend/javascript/controllers/` directory...', :magenta
FileUtils.mkdir_p('frontend/javascript/controllers')

say 'Stimulus successfully added', :green

say 'To start adding controllers, visit the `./frontend/javascript/controllers/` directory', :blue

say 'Make sure your controllers follow the `[name]_controller.js` convention', :blue

say 'For further reading, check out "https://stimulusjs.org/"', :blue
