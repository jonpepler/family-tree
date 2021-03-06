class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :other_names
      t.string :last_name
      t.text :description
      t.date :date_of_birth
      t.date :date_of_death

      t.timestamps
    end
  end
end
