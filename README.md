[![Gem Version](https://badge.fury.io/rb/sinatra-thymeleaf.svg)](https://badge.fury.io/rb/sinatra-thymeleaf)

# sinatra-thymeleaf
Sinatra template support for Thymeleaf.rb

# Thymeleaf.rb
Thymeleaf.rb is a Ruby adaptation of Thymeleaf, a natural templating engine.

It allows to create natural templates (HTML that can be correctly displayed in browsers and also work as static prototypes) and render with a data set to provide them functionality.

You can find Thymeleaf.rb here: https://github.com/trabe/thymeleaf-rb
Templating language is here: http://www.thymeleaf.org

# Usage

This is a gem so just pop it in your Gemfile:

```
gem 'sinatra-thymeleaf'
```

Then, require it and activate the helper in your app:
```
require 'sinatra/base'
require 'sinatra-thymeleaf'

class App < Sinatra::Base
  helpers Sinatra::Thymeleaf
  
    get "/test" do
        thyme :test
    end
end
```

The views have an html externsion and should be placed in the views directory.
That's about it. 

I'll continue to add functionality and details, as I'm looking to use this in a project.
Please add issues if you spot any problems.

# Template parameters
The template variables can be passed by using the locals parameter, like this:
```
  thyme :test, {:param => 'value'>}
```

#Localization support
You can use i18n localization in your templates, like this:

```
  <span data-th-text="${t['new.message']}">Some text</span>
```
This works by using I18n.t directly so remember to configure i18n for your sinatra app


