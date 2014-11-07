class Company < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :theme
  	# is_sluggable :subdomain
	has_attached_file :logo, :styles => { :large => "300x300", :medium => "150x150>", :small => "100x100", :thumb => "75x75>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :logo, :content_type => /\Aimage/
	validates_attachment_file_name :logo, :matches => [/png\Z/, /jpe?g\Z/]
	do_not_validate_attachment_file_type :logo

	validates :company, presence: true
	validates :tagline, presence: true
	validates :phone, phone_number: true
	validates :address1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zipcode, presence: true
	validates :email, presence: true
	validates :hours, presence: true
	validates :year_established, presence: true
	# validates :seourl, presence: true

end
