# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sb_session',
  :secret      => '6c2a32650e0ba96dceacc364adc093f456d3bf5b12371ea494a4cf023045d8f2fc96bec70f7c97b37c4adc2172b6a6c7b6b7153baf40ddf34f83212ccff129a3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
