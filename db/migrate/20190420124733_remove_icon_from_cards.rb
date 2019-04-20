class RemoveIconFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :icon, :string
  end
end
