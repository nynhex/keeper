class Sale < ActiveRecord::Base
  belongs_to :customer
  validates :customer, presence: true
end
