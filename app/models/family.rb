class Family < ActiveRecord::Base
  include PgSearch

  has_one :phone
  has_one :address
  has_many :people, -> { order(:last_name) }

  pg_search_scope :name_seach, :associated_against => {
    :people => [:fist_name, :last_name]
  },:using => { :tsearch => {:prefix => true} }

  accepts_nested_attributes_for :people, :address, :phone
end
