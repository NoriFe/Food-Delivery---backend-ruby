require 'csv'
require_relative "../models/meal.rb"

class MealRepository

  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    @next_id = 1
    load_csv
  end

  def all
    @meals    
  end

  def create(meal)
    meal.id = @next_id
    @meals << meal
    next_id += 1
    save_scv
  end

  private 

  def save_scv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << ["id", "name", "price"]
      @meals << do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end    
    @next_id = @meals.last.id + 1 unless @meals.empty?
  end
end