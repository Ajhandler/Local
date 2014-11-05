class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :confirmable, :recoverable, 
		   :validatable, :rememberable, :trackable
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone, phone_number: true
	belongs_to :company
end
