class CreateFounds < ActiveRecord::Migration
  def change
    create_table :founds do |t|
      t.text :catagory
      t.text :location
      t.text :email

      t.timestamps
    end
  end
end
