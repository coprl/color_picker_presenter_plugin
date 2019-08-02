require 'voom/presenters/dsl/components/event_base'

module Voom
  module Presenters
    module Plugins
      module ColorPicker
        class Component < DSL::Components::EventBase
          attr_accessor :name, :value, :color_margin, :colors_per_row, :color_size, :default_tint,
                        :fixed_min_height, :palette, :use_spectrum_picker

          def initialize(name, **attribs, &block)
            @name = name
            @value               = attribs.delete(:value){ '' }
            @color_margin        = attribs.delete(:color_margin){ 6 }
            @colors_per_row      = attribs.delete(:color_per_row){ 5 }
            @color_size          = attribs.delete(:color_size){ 54 }
            @default_tint        = attribs.delete(:default_tint){ 500 }
            @fixed_min_height    = attribs.delete(:fixed_min_height){ true }
            @palette             = attribs.delete(:palette){ "material-full" }
            @use_spectrum_picker = attribs.delete(:use_spectrum_picker){ true }
            super(type: :color_picker, **attribs, &block)
            expand!
          end

        end
      end
    end
  end
end