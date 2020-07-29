class Calculations

    def self.totalpremium
        ExModel.maximum(:price)
      end


end