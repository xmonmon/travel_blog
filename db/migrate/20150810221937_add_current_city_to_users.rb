class AddCurrentCityToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :current_city
  	end
  end
end
