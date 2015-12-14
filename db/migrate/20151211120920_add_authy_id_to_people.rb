class AddAuthyIdToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :authy_id, :integer
  	add_column :people, :contact_verified, :boolean, default: false
  end
end
