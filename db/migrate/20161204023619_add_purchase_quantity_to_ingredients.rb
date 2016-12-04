class AddPurchaseQuantityToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :purchase_quantity, :decimal
    remove_column :ingredients, :purchase_quanitity
  end
end
