class CalculationsController < ApplicationController
    def index
      @premium_total = Calculations.totalpremium
    
    end
  
  end
  