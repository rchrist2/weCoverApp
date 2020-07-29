class CreateRiskByBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :risk_by_brands do |t|
      t.string :brand
      t.decimal :screen_risk, precision: 10, scale: 2
      t.decimal :total_loss_risk, precision: 10, scale: 2
      t.decimal :battery_risk, precision: 10, scale: 2

      t.timestamps
    end
  end
end
