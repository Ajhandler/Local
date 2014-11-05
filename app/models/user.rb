class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, 
		   :validatable, :rememberable, :trackable

	# has_attached_file :logo, :styles => { :large => "300x300", :medium => "200x200>", :small => "100x100", :thumb => "75x75>" }, :default_url => "/images/:style/missing.png"
	# validates_attachment_content_type :logo, :content_type => /\Aimage/
	# validates_attachment_file_name :logo, :matches => [/png\Z/, /jpe?g\Z/]
	# do_not_validate_attachment_file_type :logo

	# validates :first_name, presence: true
	# validates :last_name, presence: true
	# validates :phone, phone_number: true
	has_one :company
end
