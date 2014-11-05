class Company < ActiveRecord::Base
	has_many :users
	has_one :template
end
