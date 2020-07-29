class CreateExModels < ActiveRecord::Migration[6.0]
  def change
    create_table :ex_models do |t|
      t.string :brand
      t.string :model
      t.decimal :price
      t.references :risk_by_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
