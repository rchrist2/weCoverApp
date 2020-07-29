class AddFkToExmodels < ActiveRecord::Migration[6.0]
  def change
    add_reference :ex_models, :quote, null: false, foreign_key: true
  end
end
