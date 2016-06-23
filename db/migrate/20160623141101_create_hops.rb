class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.text :description
      t.float :alpha_acid
      t.float :beta_acid
      t.string :country_of_origin

      t.timestamps null: false
    end
  end
end
