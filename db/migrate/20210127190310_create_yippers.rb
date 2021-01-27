class CreateYippers < ActiveRecord::Migration[6.0]
  def change
    create_table :yippers do |t|
      t.text :content
      t.integer :vote
      t.integer :user_id

      t.timestamps
    end
  end
end
