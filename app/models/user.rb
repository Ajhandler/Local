class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, 
		   :validatable, :rememberable, :trackable
	# validates :first_name, presence: true
	# validates :last_name, presence: true
	# validates :phone, phone_number: true
	has_one :company
end
