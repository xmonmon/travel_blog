class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  validates_length_of :title, :maximum=>200, :message=>"less than {{count}} if you don't mind"
end
