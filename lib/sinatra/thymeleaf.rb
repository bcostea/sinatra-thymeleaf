require 'sinatra/base'
require_relative 'tilt/thymeleaf'
require 'i18n'

module Sinatra
  # we need to configure the Thymeleaf prefix and suffix for insert and replace
  Thymeleaf.configuration.template.prefix = "./views/"
  Thymeleaf.configuration.template.suffix = ".html"

  module Thymeleaf
    def thyme(template=nil, locals={}, options = {}, &block)

      options, template = template, nil if template.is_a?(Hash)
      template = lambda { block } if template.nil?
      locals[:t] = lambda { |m| I18n.t(m) }

      # setup Sinatra flash
      locals[:flash] = {}
      unless flash.nil?
        locals[:flash] = flash
      end

      # add warden current_user if available
      unless current_user.nil?
        locals[:current_user] = current_user
      end

      render :html, template, options, locals
    end
  end

  helpers Thymeleaf
end

Tilt.register Tilt::ThymeleafTemplate, 'tilt/thymeleaf', 'html', 'thyme'
