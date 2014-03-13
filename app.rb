require 'bundler/setup'

require 'pakyow'

require 'twitter'

Pakyow::App.define do
  configure :global do
    app.consumer_key        = ENV['CONSUMER_KEY']
    app.consumer_secret     = ENV['CONSUMER_SECRET']
    app.access_token        = ENV['ACCESS_TOKEN']
    app.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end

  configure :development do
    # put development config here
  end

  configure :prototype do
    # an environment for running the front-end prototype with no backend
    app.ignore_routes = true
  end

  configure :production do
    # suggested production configuration
    app.auto_reload = false
    app.errors_in_browser = false

    # put your production config here
  end
end
