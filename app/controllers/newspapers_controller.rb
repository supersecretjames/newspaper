class NewspapersController < ApplicationController

	def new
		@newspaper = Newspaper.new
		@newspaper.subscription_plans.build
	end

	def create
		@newspaper = Newspaper.new(params[:newspaper])

		if @newspaper.save
			redirect_to newspaper_url(@newspaper)
		else
			render :new
		end
	end

	def show
		@newspaper = Newspaper.find(params[:id])
		@subscription_plans = SubscriptionPlan.where(:newspaper_id => @newspaper.id)
	end
end
