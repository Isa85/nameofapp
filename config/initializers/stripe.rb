if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_Fn9Ofoi9N60RMVnkP7Q9NMdo',
    secret_key: 'sk_test_sWCe9Jhzs1BWTTwtLwOaVTlc'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]