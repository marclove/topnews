require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Topnews
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths << Rails.root.join('app/gateways')
    config.autoload_paths << Rails.root.join('lib')
    %w[assets tasks].each do |subdirectory|
      Rails.autoloaders.main.ignore("#{Rails.root}/lib/#{subdirectory}")
    end
  end
end
