class ChangeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :teddies, :description, :text
  end
end
