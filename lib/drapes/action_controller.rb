module Drapes
  module ActionController
    extend ActiveSupport::Concern
    
    included do
      include Drapes::Common
    end
    
    module ClassMethods
      def drape(theme, params={})
        before_filter(params) { |controller| Drapes::set_theme(theme, controller) }
      end
    end
  end
end

ActionController::Base.send(:include, Drapes::ActionController)