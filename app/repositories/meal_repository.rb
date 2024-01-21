require 'csv'
require_relative "../models/meal.rb"

class MealsRepository

  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    load_csv
  end

  def all
    @meals    
  end

  private 

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end    
  end
end