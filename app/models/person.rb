class Person < ActiveRecord::Base
  belongs_to :family

  has_one :phone
  has_one :email

  accepts_nested_attributes_for :phone, :email
end
