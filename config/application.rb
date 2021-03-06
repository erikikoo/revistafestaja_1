require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RevistaFestaJa
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
	
	config.i18n.default_locale = 'pt-BR'
	
	config.autoload_paths += %W(#{Rails.root}/lib)

	#config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
	#config.serve_static_assets = true

	#config.assets.initialize_on_precompile = false
  end
end
