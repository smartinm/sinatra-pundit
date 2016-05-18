# Sinatra::Pundit

[![Gem Version](https://badge.fury.io/rb/sinatra-pundit.svg)](https://badge.fury.io/rb/sinatra-pundit)

A lightweight wrapper for the [Pundit](https://github.com/elabs/pundit) authorization gem. Provides authorization Pundit's helpers to use in Sinatra applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sinatra-pundit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sinatra-pundit

## Usage

Require the extension in your application:

```ruby
require 'sinatra/pundit'
```

If your application is “classic”, you’re done. The `authorize` method should be available to your application.

If your application subclasses Sinatra::Base, you have to register the extension in your subclass:

```ruby
register Sinatra::Pundit
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smartinm/sinatra-pundit.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

