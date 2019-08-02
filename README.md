# ColorPickerPresenterPlugin

A plugin for [presenters](http://github.com/rx/presenters) that provides color picker functionality.
Use Javascript library from [material-design-inspired-color-picker](https://github.com/BennyAlex/material-design-inspired-color-picker)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'color_picker_presenter_plugin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install color_picker_presenter_plugin

## Usage

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