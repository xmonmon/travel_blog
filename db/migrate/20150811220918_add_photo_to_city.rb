class AddPhotoToCity < ActiveRecord::Migration
  def change
  	change_table :cities do |t|
  		t.string :photo
  	end
  end
end
