class Todo < ActiveRecord::Base
  validates :title, :presence => true
  has_many :comments, :class_name => "TodoComment"
end
