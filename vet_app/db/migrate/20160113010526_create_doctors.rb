class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :school_degree_from
      t.float :years_in_practice

      t.timestamps null: false
    end
  end
end
