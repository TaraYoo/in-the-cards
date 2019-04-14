class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.text :mean_reverse
      t.text :mean_up
      t.string :icon

      t.timestamps
    end
  end
end
