class Family < ActiveRecord::Base
  has_one :phone
  has_one :address
  has_many :people

  accepts_nested_attributes_for :people, :address, :phone
end
