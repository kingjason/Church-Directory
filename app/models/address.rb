class Address < ActiveRecord::Base
	geocoded_by :line1
	after_validation :geocode
end
