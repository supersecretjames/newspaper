class User < ActiveRecord::Base
  attr_accessible :name, :subscriptions_attributes, :subscription_plan_ids

  has_many :subscriptions, :inverse_of => :user
  has_many :subscription_plans, :through => :subscriptions
  accepts_nested_attributes_for :subscriptions
end
