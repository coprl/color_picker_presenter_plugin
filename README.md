# Color picker Presenter Plugin

A [COPRL](http://github.com/coprl/coprl) presenter plugin that provides color picker functionality.
Use Javascript library from [material-design-inspired-color-picker](https://github.com/BennyAlex/material-design-inspired-color-picker)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'color_picker_presenter_plugin', git: 'https://github.com/coprl/color_picker_presenter_plugin', require: false
```

And then execute:

    $ bundle


## Usage in POMs

Declare the plugin in your pom, `plugin :color_picker`.

```ruby
Voom::Presenters.define(:my_pom) do
  plugin :color_picker
  
  content do
    color_picker(:name, value: '#BBFF11')
  end
end
```
### Additional options and defaults

```
color_margin: 6
color_per_row: 5
color_size: 54
default_tint: 500
fixed_min_height: true
palette: "material-full"
use_spectrum_picker: true
```

Look [here](https://github.com/BennyAlex/material-design-inspired-color-picker) for more configuration details.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the COPRL project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/coprl/coprl/blob/master/CODE-OF-CONDUCT.md).
