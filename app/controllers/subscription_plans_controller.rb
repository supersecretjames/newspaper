class SubscriptionPlansController < ApplicationController
	def index
		@subscription_plans = SubscriptionPlan.all
		@newspaper = Newspaper.find(params[:newspaper][:id])
		@subscription_plans = 
						@subscription_plans.where(:newspaper_id => @newspaper.id)
	end

	def new
		@subscription_plan = SubscriptionPlan.new
	end

	def create
		@subscription_plan = SubscriptionPlan.new(params[:subscription_plan])

		if @subscription_plan.save
			redirect_to subscription_plan_url(@subscription_plan)
		else
			render :new
		end
	end

	def show
		@subscription_plan = SubscriptionPlan.find(params[:id])
	end

end
