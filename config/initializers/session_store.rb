# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_pitslamp_session',
  :secret => '61217c53802cf9bba3419a5f72395c0f80ebf07a1048bccdc0a9c6408fba4b35158efef96e85d96a7b43488efa312a9da2e22653f8064ceec83239c3e5adff62'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
