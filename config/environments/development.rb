StreetLevel::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin


  ENV['S3_KEY']='AKIAJMZ5UQMXC4G6MJSQ'
  ENV['S3_SECRET']='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'
  ENV['S3_BUCKET']='street-level'

  #Turn S3 On or Off
  Refinery.s3_backend = true
end

Refinery.rescue_not_found = false
# When true will use Amazon's Simple Storage Service on your production machine
# instead of the default file system for resources and images
Refinery.s3_backend = !(ENV['S3_KEY'].nil? || ENV['S3_SECRET'].nil?)
