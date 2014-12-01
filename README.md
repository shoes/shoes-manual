# Shoes::Manual

This gem represents both the content of the Shoes manual, and the necessary
Shoes code to run it.

Because of how the manual is used, this gem does not depend directly on Shoes
itself. The content can be accessed without requiring `shoes-core`, but you
won't be able to actually run the manual app without using this gem in a full
Shoes installation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shoes-manual'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shoes-manual

## Content

The content of the Shoes manual can be directly accessed via this method:

```
Shoes::Manual.load_docs('en')
```

'en' here designates the language. There is currently an (out of date) copy in
Japanese alongside the English content.

That method returns a structured output of the full manual:

```
{
  :description=> "\n\nShoes is a tiny graphics toolkit...."
  :sections=>
     [["Introducing",
       {
         :title=>"Introducing Shoes",
         :section=>"Hello!",
         :description=>"\n\nHow does Shoes look on OS X and Windows?..."
         ...
       }
     ]]
}
```

## Running the Manual
If you have an application which includes Shoes, you can also run the manual
app by the following call:

```
Shoes::Manual.run
```

## Contributing

1. Fork it ( https://github.com/shoes/shoes-manual/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
