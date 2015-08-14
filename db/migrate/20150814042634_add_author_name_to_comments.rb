class AddAuthorNameToComments < ActiveRecord::Migration
  def change
  	change_table :comments do |t|
  		t.string :author
  	end
  end
end
