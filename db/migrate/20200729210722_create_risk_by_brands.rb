class CreateRiskByBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :risk_by_brands do |t|
      t.string :brand
      t.decimal :screen_risk
      t.decimal :total_loss_risk
      t.decimal :battery_risk

      t.timestamps
    end
  end
end
