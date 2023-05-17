class Student

    def initialize(name="default")
        puts name
    end
end

student1 = Student.new("kk")
student2 = Student.new()

# The initialize method is useful when we want to initialize some class variables 
# at the time of object creation. The initialize method is part of the object-creation
# process in Ruby and it allows us to set the initial values for an object.

# Local variable
    #  => local variable, so named because it can only be accessed in a specific, local environment.
# Instance Variables
    # => An instance variable is a variable which is declared in a class but outside of 
    #  constructors, methods, or blocks.


    class Person
        def initialize(name)
          @name = name
        end
      
        def say_hello
          puts "Hello, #{@name}!"
        end
      end
      
      person1 = Person.new("Alice")
      person2 = Person.new("Bob")
      
      person1.say_hello  # Output: Hello, Alice!
      person2.say_hello  # Output: Hello, Bob!


    #   class variable
A class variable belongs to the class itself and is shared among all 
    instances of that class. It is prefixed with @@ followed by the variable name.
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
      
      puts MyClass.get_count  # Output: 2
      