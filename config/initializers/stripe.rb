Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_TEST_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_TEST_SECRET_KEY'],
  :webhook         => ENV['WEBHOOK_SIGNING_SECRET']
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
# For future reference
# Stripe.api_key = Rails.configuration.stripe(:secret_key,:publishable_key)
