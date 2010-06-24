# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Pitslamp::Application.initialize!

# Turn off auto TLS for e-mail
ActionMailer::Base.smtp_settings[:enable_starttls_auto] = false

#Config flickraw
FlickRaw.api_key       = 'f153edde5fbe1b7492f52e0559dcc789'
FlickRaw.shared_secret = 'abbec6fd4c7aa2a8'
