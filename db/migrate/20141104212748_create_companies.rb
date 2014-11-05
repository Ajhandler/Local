class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company
      t.string :tagline
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :phone
      t.integer :fax
      t.string :email
      t.text :about
      t.string :hours
      t.integer :year_established
      t.string :facebook
      t.string :twitter
      t.string :tumblr
      t.string :linkedin
      t.integer :package_id
      t.integer :template_id	
      t.string :subdomain
      t.timestamps
    end
  end
end
