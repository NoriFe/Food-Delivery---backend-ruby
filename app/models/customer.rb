class Customer
    attr_accessor :id
    attr_reader :name, :address
    def initialize(attributes={})
      @name = attributes[:name]
      @id = attributes[:id]
      @address = attributes[:address]    
    end
  end
  