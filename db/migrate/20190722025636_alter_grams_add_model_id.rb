class AlterGramsAddModelId < ActiveRecord::Migration[5.2]
  def change
    add_column :grams, :model_id, :integer
    add_index :grams, :model_id
  end
end
