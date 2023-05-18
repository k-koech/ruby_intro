# It’s a Ruby keyword that gives you access to the current object.


class Student
   name = "kelvin"
   def showing
      puts self
   end
   
   puts self.name
end

student1 = Student.new
student1

student2 = Student.new
puts student2.showing


class Dog
   attr_accessor :name, :owner
 
   def initialize(name)
     @name = name
   end
 
   def bark
     puts "Woof!"
   end
 
   def get_adopted(owner_name)
     self.bark # calls the Dog#bark method
     self.owner = owner_name
   end
 
 end
#  ---------------------------
class Dog
   attr_accessor :name, :owner
 
   def initialize(name)
     @name = name
   end
 
   def bark
     puts "Woof!"
   end
 
   def get_adopted(owner_name)
     bark # implicit receiver will be self
     self.owner = owner_name
   end
 
 end