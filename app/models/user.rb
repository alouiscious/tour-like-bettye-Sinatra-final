class User < ActiveRecord::Base
  has_secure_password
  
  validates :username, presence: true
  validates :username, uniqueness: true
  
  validates :email, presence: true
  validates :email, uniqueness: true
  
  has_many :venues
  has_many :tourdates, through: :venues

  def self.fullname
    User.all.each do |name|
      @fullname = name.first_name name.last_name
    end
  end
end