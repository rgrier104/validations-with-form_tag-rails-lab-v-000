class Author < ActiveRecord::Base
  validate :name, presence: true
  validate :email, uniqueness: true
  validte :phone_number, length: { is: 10 }
end
