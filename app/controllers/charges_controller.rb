class ChargesController < ApplicationController

	def index
	end	

	def new
	end

	def create
  	# Amount in cents
  	@amount = 500

  	customer = Stripe::Customer.create({
    	email: params[:stripeEmail],
    	source: params[:stripeToken],
  	})

  	charge = Stripe::Charge.create({
    	customer: customer.id,
    	amount: @amount,
    	description: 'Rails Stripe customer',
    	currency: 'usd',
  	})

  	redirect_to 'users_path'
  end
end
