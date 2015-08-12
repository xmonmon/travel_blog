class User < ActiveRecord::Base
  has_many :posts
  has_secure_password
  validates :email, uniqueness: true


  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end
