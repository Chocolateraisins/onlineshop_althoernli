class CreateTeddyCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :teddy_categories do |t|
      t.belongs_to :teddy, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
