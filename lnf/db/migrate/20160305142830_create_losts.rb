class CreateLosts < ActiveRecord::Migration
  def change
    create_table :losts do |t|
      t.text :catagory
      t.text :description
      t.text :email

      t.timestamps
    end
  end
end
