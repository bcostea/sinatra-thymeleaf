require 'sinatra/base'
require_relative 'tilt/thymeleaf'
require 'i18n'

module Sinatra

  module Thymeleaf
    def thyme(template=nil, locals={}, options = {}, &block)
      options, template = template, nil if template.is_a?(Hash)
      template = lambda { block } if template.nil?
      locals[:t] = lambda { |m| I18n.t(m) }

      unless session['flash'].nil?
        locals[:flash] = session['flash']
      end

      render :html, template, options, locals
    end
  end

  helpers Thymeleaf
end

Tilt.register Tilt::ThymeleafTemplate, 'tilt/thymeleaf', 'html', 'thyme'
