class Listing < ActiveRecord::Base
  has_many :properties, dependent: :destroy

  validates :city, presence: true
end
