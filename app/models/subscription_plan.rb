class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :is_daily, :price, :newspaper_id, :name

  belongs_to :newspaper
  has_many :subscriptions, :inverse_of => :subscription_plan

  validates :price, :newspaper, :presence => true
  validates :is_daily , :inclusion => { :in => [true, false] }
end
