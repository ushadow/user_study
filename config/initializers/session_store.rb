# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_user_study_session',
  :secret      => '7b66ce50e23e871da4aad135a0719e9ddc181639210c3eed742c7dfe619da7d3a286d3da8ffc16e8648f1fb36f7b981cf885c4707c8227b85cb3c40bbf9af87b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
