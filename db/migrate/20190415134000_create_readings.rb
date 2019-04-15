class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.references :deck, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
