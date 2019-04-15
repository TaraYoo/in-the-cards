class AddUpToReading < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :up, :boolean
  end
end
