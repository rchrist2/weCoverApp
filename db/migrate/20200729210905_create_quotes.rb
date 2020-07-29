class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.decimal :premium
      t.references :ex_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
