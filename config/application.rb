require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ColetaSeletiva
  class Application < Rails::Application
    config.generators do |g|
        g.test_framework :rspec
        g.assets false
    end
    
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    # Custom directories with classes and modules you want to be autoloadable.
    config.autoload_paths += %W(#{config.root}/lib)

    config.i18n.default_locale = "pt-BR"

    config.secret_key_base = "6af0772bb0e75ee764cae06614bdd5eb69fef57241933324311a14a469d8dcce125ec145c43f3804769918894a1f6322fa381166438aecf327d1f68932de7fa9"
  end
end
