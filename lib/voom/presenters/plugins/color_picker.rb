require_relative 'color_picker/component'

module Voom
  module Presenters
    module Plugins
      module ColorPicker
        module DSLComponents
          def color_picker(**attributes, &block)
            self << ColorPicker::Component.new(parent: self, **attributes, &block)
          end

        end

        module WebClientComponents
          VIEW_DIR = File.join(__dir__, 'color_picker')

          def render_header_color_picker(_pom, render:)
            render.call :erb, :header, views: VIEW_DIR
          end

          def render_color_picker(comp,
                                  render:,
                                  components:,
                                  index:)
            render.call :erb, :picker, views: VIEW_DIR,
                        locals: {comp: comp,
                                 components: components,
                                 index: index}
          end

        end
      end
    end
  end
end
