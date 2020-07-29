class ExModel < ApplicationRecord
  belongs_to :risk_by_brand
  has_many :quotes
end
