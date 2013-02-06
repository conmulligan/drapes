module Drapes
  module Common
    def current_theme
      Drapes::theme
    end
    
    def drapes_themes
      themes = []
      paths = Pathname.new('app/assets/themes/').children.select { |c| c.directory? }
      paths.each do |path|
        themes << YAML.load_file(path.join('theme.yml')).symbolize_keys
      end
      themes
    end
  end
end