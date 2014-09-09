module Monsterboxstyle
  class << self
    def load!
      configure_sass
    end

    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def fonts_path
      File.join assets_path, 'fonts'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path

      ::Sass::Script::Number.precision = [10, ::Sass::Script::Number.precision].max
    end

  end
end

Monsterboxstyle.load!
