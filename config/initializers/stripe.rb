Rails.configuration.stripe = {
  :publishable_key => 'pk_test_IeDYjwFkTXexzbWerSHXjBW1',
  :secret_key      =>  'sk_test_CU6CyX1cC9sclQXmdOcdiCsV'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]