"""
In Ruby, private methods are methods that can only be called from within the same 
class or module in which they are defined. They cannot be accessed from outside 
the class or module, including from instances of the class. 
But can be accessed during inheritance
"""

class Car
    def initialize(make, model)
      @make = make
      @model = model
    end
    
    def start_engine
      check_fuel_level
      ignite_spark_plug
      puts "Engine started!"
    end
    
    private
    
    def check_fuel_level
      puts "Checking fuel level..."
      # Code to check the fuel level goes here
    end
    
    def ignite_spark_plug
      puts "Igniting spark plug..."
      # Code to ignite the spark plug goes here
    end
  end
  
my_car = Car.new("Toyota", "Corolla")
# my_car.check_fuel_level  #No method error
my_car.start_engine

# Inheritance
class Camry < Car
    def start_engine
       super
    end
end

cam1 = Camry.new("Mercedes", "xyz")
cam1.start_engine