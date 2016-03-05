class AddLocationColumnToLosts < ActiveRecord::Migration
  def change
    add_column :losts, :location, :text
  end
end
