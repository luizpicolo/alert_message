# Alert Message

This is a simple gem for alerts messages.

## Installation

Add to your Gemfile:

     gem 'alert_message'

Then run:

    $ bundle install

Run install script:

    $ rails g alert_message:install

## How to use

Add to *application.html.erb*

    <%= render "layouts/alerts" %>

To show your alerts, use:

    flash[:error] = "YOUR MESSAGE"
    flash[:notice] = "YOUR MESSAGE"
    flash[:success] = "YOUR MESSAGE"

## Contributors

Welcome to contribute

## License

MIT License. Copyright 2014 Luiz Picolo. http://www.luizpicolo.com.br
