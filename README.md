# Alert Message

[![Gem Version](https://badge.fury.io/rb/alert_message.svg)](http://badge.fury.io/rb/alert_message)

This is a simple gem for alerts messages.

## Installation

Add to your Gemfile:

     gem 'alert_message'

Then run:

    $ bundle install

Run install script:

    $ rails g alert_message:install

Rename *app/assets/application.css* to *app/assets/application.css.scss* and add in app/assets/application.css.scss

    *= require alert_message

and in app/assets/application.js

    //= require alert_message

## How to use

Add in *application.html.erb*

    <%= render "layouts/alerts" %>

To show your alerts, use:

    flash[:error] = "YOUR MESSAGE"
    flash[:notice] = "YOUR MESSAGE"
    flash[:success] = "YOUR MESSAGE"

## Example

    class HomeController < ApplicationController
      def index
          flash[:error] = "YOUR MESSAGE"  
      end
    end

## Demo

[https://alert-message.herokuapp.com/](https://alert-message.herokuapp.com/)


## Contributing

**Welcome to contribute**

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Added some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request


## License

MIT License. Copyright 2014 Luiz Picolo. http://www.luizpicolo.com.br
