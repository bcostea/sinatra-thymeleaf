require 'tilt/template'
require 'thymeleaf'

module Tilt
  class ThymeleafTemplate < Template

    self.default_mime_type = 'text/html'

    def prepare
    end

    def evaluate(scope, locals, &block)
      puts locals.inspect
      @output ||= Thymeleaf::Template.new(data, locals).render
    end
  end
end
