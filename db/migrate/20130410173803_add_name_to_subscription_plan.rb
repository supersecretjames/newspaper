class AddNameToSubscriptionPlan < ActiveRecord::Migration
  def change
  	add_column :subscription_plans, :name, :string
  end
end
