module Drapes
  module ActionView
    extend ActiveSupport::Concern

    included do
      include Drapes::Common
    end

    def theme_javascript_include_tag(*sources)
      if Drapes::theme
        options = sources.extract_options!
        sources = sources.collect { |source| [Drapes::theme, "javascripts", source].join('/') }
        sources += [options]
      end
      javascript_include_tag(*sources)
    end

    def theme_stylesheet_link_tag(*sources)
      if Drapes::theme
        options = sources.extract_options!
        sources = sources.collect { |source| [Drapes::theme, "stylesheets", source].join('/') }
        sources += [options]
      end
      stylesheet_link_tag(*sources)
    end
  end
end

ActionView::Base.send(:include, Drapes::ActionView)