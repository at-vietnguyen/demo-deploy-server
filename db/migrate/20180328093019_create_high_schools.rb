class CreateHighSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :high_schools do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
