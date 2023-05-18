class MyClass
    @@count = 0
    
    def initialize
      @@count += 1
    end
    
    def self.get_count
      @@count
    end
  end
  
obj1 = MyClass.new
obj2 = MyClass.new
obj2 = MyClass.new

puts MyClass.get_count  # Output: 2
  