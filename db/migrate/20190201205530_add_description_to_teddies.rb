class AddDescriptionToTeddies < ActiveRecord::Migration[5.2]
  def change
    add_column :teddies, :description, :string
  end
end
