# Alert Message

[![Gem Version](https://badge.fury.io/rb/alert_message.svg)](http://badge.fury.io/rb/alert_message)
[![Build Status](https://travis-ci.org/luizpicolo/alert_message.svg?branch=master)](https://travis-ci.org/luizpicolo/alert_message)

This is a simple gem for [alerts messages](http://rubygems.org/gems/alert_message). 

## Installation

Add to your Gemfile:

```ruby
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
** For less than Rails 6 **
Add scripts in app/assets/application.js

```ruby
//= require alert_message
```

For greater than Rails 6 add in `app\javascript\packs\application.js`

```javascript
document.addEventListener('DOMContentLoaded', () => {
  let alertMessage = document.getElementById('alert');
  
  alertMessage.classList.add('alert-message--visible');
  
  setTimeout((() => {
    alertMessage.classList.remove('alert-message--visible');
  }), 10000);
  
  alertMessage.addEventListener('click', () => {
    alertMessage.classList.remove('alert-message--visible');
  });
});
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

# Run testes

in progress

## Contributing

**Welcome to contribute**

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT License. Copyright 2014 Luiz Picolo. http://www.luizpicolo.com.br
