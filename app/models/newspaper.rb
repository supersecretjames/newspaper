class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title, :subscription_plans, 
  								:subscription_plans_attributes

  has_many :subscription_plans, :inverse_of => :newspaper

  accepts_nested_attributes_for :subscription_plans

  validates :editor, :title, :presence => true
end
