class TodoComment < ActiveRecord::Base

  belongs_to :todo
  validates :content, :presence => true

end
