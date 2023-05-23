"""
SELF
 -It’s a Ruby keyword that gives you access to the current object.
 -The word self can be used in the definition of a class method to tell Ruby that
  the method is for the self, which is in this case the class
        --Uses--
  - Using Self To Define Class-Level Methods
"""

# define Class level methods
class Salad
    def Salad.buy_olive_oil
      puts Salad
    end
  end
  Salad.buy_olive_oil
"""
Why is this useful?

Because we don’t have to use the class name for each method definition, making our 
code easier to change if we change the class.
It also makes the code less noisy & better to read.

That’s why we do def self.buy_olive_oil instead of def Salad.buy_olive_oil.
"""

# if its a class method call it directly
# You cant call a normal method from a class method/used with self
class Student
    @@marks=500
    @@all = []
    def initialize(name)
        @name = name
       puts "my name is "+name
    end 

    def marks
      puts "Your marks"
    end

    def test
        Student.printMarks()
    end

    def self.printMarks
      puts @@marks
      
    end

    def self.all
      @@all
    end
end

student1 = Student.new("Austin")
student1.test 

Student.printMarks
Student.all