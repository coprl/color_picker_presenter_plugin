require_relative 'color_picker/component'

module Coprl
  module Presenters
    module Plugins
      module ColorPicker
        module DSLComponents

          def color_picker(name, **attributes, &block)
            self << ColorPicker::Component.new(name, parent: self, **attributes, &block)
          end

        end

        module WebClientComponents
          def view_dir_color_picker(pom)
            File.join(__dir__, '../../../..', 'views', 'components')
          end

          def render_header_color_picker(pom, render:)
            render.call :erb, :color_picker_header, views: view_dir_color_picker(pom)
          end

          def render_color_picker(comp, render:, components:, index:)
            render.call :erb, :color_picker, views: view_dir_color_picker(comp),
                        locals: {comp: comp,
                                 components: components,
                                 index: index}
          end

        end
      end
    end
  end
end
