class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :user
      t.belongs_to :city
      t.timestamps null: false
    end
  end
end
