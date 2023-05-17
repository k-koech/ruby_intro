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

# Instance Variables
An instance variable is a variable which is declared in a class but outside of 
constructors, methods, or blocks.
