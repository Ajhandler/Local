class Company < ActiveRecord::Base
	belongs_to :user
	has_one :theme
end
