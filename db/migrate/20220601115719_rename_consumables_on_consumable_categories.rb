class RenameConsumablesOnConsumableCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table :consumables, :consumable_catigories
  end
end
