class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.references :card, index: true, foreign_key: true
      t.references :deck, index: true, foreign_key: true

      t.timestamps
    end
  end
end
