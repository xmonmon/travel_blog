class User < ActiveRecord::Base
  has_many :posts
  has_secure_password
  validates :email, uniqueness: true
  has_attached_file :avatar,
  					:styles => { :medium => "150x150>", :thumb => "44x44>"},
  					:default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
  					   :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"]},
  					   :size => { :in => 0..10.kilobytes }

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end
