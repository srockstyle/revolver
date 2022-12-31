require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Revolver
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    ## デフォルトロケールは日本語 / ロケールファイルはconfig/localesに
    config.i18n.default_locale = :ja

    ## 時刻は日本に
    config.time_zone = 'Asia/Tokyo'

    ## ActiveRecordのタイムスタンプを日本時間で表示す
    config.active_record.default_timezone = :local


    ## 余計なファイルは作成しないようにする
    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine :rb
      g.stylesheets     false
      g.javascripts     false
      g.test_framework  :rspec, view_specs: false, helper_specs: false, request_specs: true,fixture: true
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
