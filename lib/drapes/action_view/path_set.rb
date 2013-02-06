module Drapes
  module ActionView
    module PathSet
      extend ActiveSupport::Concern

      included do
      end

      module ClassMethods
      end

      def delete_path(item)
        paths.delete_if { |p| p.to_s.eql? item.to_s }
      end
    end
  end
end

ActionView::PathSet.send(:include, Drapes::ActionView::PathSet)