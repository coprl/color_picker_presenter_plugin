require_relative 'color_picker/component'

module Voom
  module Presenters
    module Plugins
      module ColorPicker
        module DSLComponents

          def color_picker(name, **attributes, &block)
            self << ColorPicker::Component.new(name, parent: self, **attributes, &block)
          end

        end

        module WebClientComponents

          def render_header_color_picker(_pom, render:)
            view_dir = File.join(__dir__, 'color_picker')
            render.call :erb, :header, views: view_dir
          end

          def render_color_picker(comp, render:, components:, index:)
            view_dir = File.join(__dir__, 'color_picker')
            render.call :erb, :picker, views: view_dir,
                        locals: {comp: comp,
                                 components: components,
                                 index: index}
          end

        end
      end
    end
  end
end
