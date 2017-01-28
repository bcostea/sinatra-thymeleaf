require 'sinatra/base'
require_relative 'tilt/thymeleaf'

module Sinatra

  module Thymeleaf
    def thyme(template=nil, locals={}, options = {}, &block)
      options, template = template, nil if template.is_a?(Hash)
      template = lambda { block } if template.nil?
      render :html, template, options, locals
    end
  end

  helpers Thymeleaf
end

Tilt.register Tilt::ThymeleafTemplate, 'tilt/thymeleaf', 'html', 'thyme'
