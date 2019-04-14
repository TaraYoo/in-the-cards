class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.string :question
      t.decimal :accuracy

      t.timestamps
    end
  end
end
