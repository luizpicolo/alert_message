# Alert Message

[![Gem Version](https://badge.fury.io/rb/alert_message.svg)](http://badge.fury.io/rb/alert_message)
[![Build Status](https://travis-ci.org/luizpicolo/alert_message.svg?branch=master)](https://travis-ci.org/luizpicolo/alert_message)

This is a simple gem for [alerts messages](http://rubygems.org/gems/alert_message). Work rails > 4

## Installation

Add to your Gemfile:

```ruby
gem 'jquery-rails' # Need for rails > 5
gem 'alert_message'
```

Then run:

    $ bundle install

Run install script:

    $ rails g alert_message:install

Add styles in app/assets/application.css

```ruby
*= require alert_message
```

Add scripts in app/assets/application.js

```ruby
//= require jquery
//= require alert_message
```

## How to use

Add in app/views/layouts/application.html.erb

```ruby
<%= render "layouts/alerts" %>
```

To show your alerts, use:

```ruby
flash[:error] = "YOUR MESSAGE"
flash[:notice] = "YOUR MESSAGE"
flash[:success] = "YOUR MESSAGE"
```

#### Example

```ruby
class HomeController < ApplicationController
  def index
    flash[:error] = "YOUR MESSAGE"  
  end
end
```

## Custom message to Devise

Some devise screens do not accept Flash Messages. For this we will use a custom helper.

Add in your app/views/layouts/_alerts.html.erb

    <%= show_messages %>

Create helper alert_message_helper.rb

```ruby
module AlertMessageHelper
  def show_messages
    return "" if resource.errors.empty?
    messages = resource.errors.full_messages
      html = <<-HTML
        <div class="alert alert-danger">
          #{messages.first}
        </div>
      HTML
      html.html_safe
  end
end
```    

## Demo

[alert-message.herokuapp.com](https://alert-message.herokuapp.com/)

# Run testes

```
bundle exec rake
```

## Contributing

**Welcome to contribute**

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT License. Copyright 2014 Luiz Picolo. http://www.luizpicolo.com.br
