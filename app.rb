require 'pry'

class Building
    attr_reader :address
    attr_accessor :name, :number_of_floors, :number_of_tenants

    @@all = []

    def initialize(name, address, number_of_floors, number_of_tenants)
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self
  
    end

    def name_and_address
        "#{@name} and #{@address}"
    end

    def self.average_number_of_tenants
        total_number_of_tenants = @@all.map{|all| all.number_of_tenants}.sum
        total_number_of_tenants/@@all.count
    end 

    def average_tenats_per_floor  
       average_tenats_per_floor = @number_of_tenants/@number_of_floors
    end

    def self.all
        @@all
    end

end


    