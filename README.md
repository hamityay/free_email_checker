# FreeEmailChecker

This gem checks an email is free account or not. If its not check domain existence. If founds domain, response mx record(s).

This gem uses free domain list, which is generated by Ammar Shah, and you can find list at https://gist.github.com/ammarshah/f5c2624d767f91a7cbdc4e54db8dd0bf

This gem also uses 'resolv-ipv6favor' gem to find ip addresses of domain, you can find gem at https://github.com/nappa/resolv-ipv6favor

Note: This gem does not check email address is in use or not.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'free_email_checker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install free_email_checker

## Usage

    $ require 'free_email_checker'
    $ result = FreeEmailChecker.check("some_name@hotmail.com")

'result' is a Hash class it contains :free, :domain, :status keys and correspondence values.

```ruby
{:free=>true, :domain=>false, :status=>"some_name@hotmail.com found in free email provider list."}

```
    $ result = FreeEmailChecker.check("some_name@github.com")

```ruby
{:free=>false, :domain=>true, :status=>"Found mx records for github.com; ALT1.ASPMX.L.GOOGLE.com, ALT3.ASPMX.L.GOOGLE.com, ASPMX.L.GOOGLE.com, ALT4.ASPMX.L.GOOGLE.com, ALT2.ASPMX.L.GOOGLE.com, "}


```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hamityay/free_email_checker/issues and https://github.com/hamityay/free_email_checker/pulls.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FreeEmailChecker project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hamityay/free_email_checker/blob/master/CODE_OF_CONDUCT.md).
