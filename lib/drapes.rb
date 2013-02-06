module Drapes
  @theme = nil

  def self.theme
    @theme
  end

  def self.remove_theme(theme, controller)
    if theme
      Rails.application.config.assets.paths.delete Rails.root.join("app", "assets", "themes", theme)
      view_path = Rails.root.join("app", "assets", "themes", theme, "views")
      controller.lookup_context.view_paths.delete_path(view_path.to_s)
    end
  end

  def self.set_theme(theme, controller)
    self.remove_theme(@theme, controller)
    @theme = theme
    if @theme
      Rails.application.config.assets.paths.unshift Rails.root.join("app", "assets", "themes", theme)
      controller.prepend_view_path Rails.root.join("app", "assets", "themes", theme, "views")
    end
  end
end

require 'drapes/common'
require 'drapes/action_controller'
require 'drapes/action_view'
require 'drapes/action_view/path_set'