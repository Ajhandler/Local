class RegistrationsController < Devise::RegistrationsController
	protected
	def after_sign_up_path_for(resource)
		new_company_path(resource)
	end
end