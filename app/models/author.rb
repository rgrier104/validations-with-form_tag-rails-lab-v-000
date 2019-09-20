class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validtes :phone_number, length: { is: 10 }
end
