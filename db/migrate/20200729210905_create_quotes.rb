class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.decimal :premium, precision: 10, scale: 2
      t.references :ex_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
