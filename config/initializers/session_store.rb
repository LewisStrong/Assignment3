# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_requests_session',
  :secret      => '85136e009443863ecb4380803868df5e8e2d1f764d75e8be2cf702cde6a7744b1d516ef766a12527bcb53c161b2fc80e4cfc9d91791e5ebb55dffb2e9370afdf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
