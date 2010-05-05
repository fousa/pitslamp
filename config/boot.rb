# Use Bundler (preferred)
begin
  require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
  require 'rubygems'
  begin
    require 'flickraw'
  rescue
    FlickRaw.api_key       = 'f153edde5fbe1b7492f52e0559dcc789'
    FlickRaw.shared_secret = 'abbec6fd4c7aa2a8'
  end
  require 'bundler'
  Bundler.setup

  # To use 2.x style vendor/rails and RubyGems
  #
  # vendor_rails = File.expand_path('../../vendor/rails', __FILE__)
  # if File.exist?(vendor_rails)
  #   Dir["#{vendor_rails}/*/lib"].each { |path| $:.unshift(path) }
  # end
  #
  # require 'rubygems'
end
