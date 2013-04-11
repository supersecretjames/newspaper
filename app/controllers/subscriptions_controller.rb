class SubscriptionsController < ApplicationController
	def new
		@subscription = Subscription.new
	end

	def create
		@subscription = Subscription.new(params[:subscription])

		if @subscription.save
			redirect_to @subscription
		else
			render :new
		end
	end

	def show
		@subscription = Subscription.find(params[:id])
	end

end
