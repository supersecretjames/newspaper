class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title

  validates :editor, :title, :presence => true
end
