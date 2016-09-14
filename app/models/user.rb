class User < ActiveRecord::Base
  has_many :listings

  validates_presence_of :name, allow_blank: false, message: 'Please enter a name.'
  validates_presence_of :email, uniqueness: true, allow_blank: false, message: 'Please enter an email.'
  validates :password, length: { :minimum => 5 }

  has_secure_password
end
