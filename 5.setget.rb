class Student
    def initialize(name, cohort)  
        @name = name  
        @cohort = cohort  
    end 

    # setter method
    # def name=(name)
    #   @name = name
    # end
    # def cohort=(cohort)
    #     @cohort = cohort
    # end
  
    # getter method
    def name
      @name
    end

    def cohort
        @cohort
    end
  
  end
student1 = Student.new("John mike", "SDFT04")
# student1.name="kelvin"
puts student1.name

# student1.name = "joel"
# puts student1.name


# REDUCED TO
class Student2
    attr_reader :name, :cohort #getter methods
    attr_writer :name, :cohort  #setter methods
    # attr_accessor :name
  end

  puts "xxxxxxxxxxxx"
  student2 = Student2.new
  student2.name="kelvin"
  student2.cohort="SDFT03"
  puts student2.name
  puts student2.cohort


#  attr_reader
We use this when we need a variable that should only be changed from private methods, 
but whose value still needs to be available publicly.

# attr_writer
With attr_writer, only the setter method is defined. The getter method is left out.
Maybe we have a secret variable we don’t want other objects to be able to read

The same goes for updating our objects properties. For this however, we need to 
use the attr_writer method. This method works similarly to attr_reader, except that
 it will automatically create setter methods for our class. Replacing our setter 
 method in our Book class with attr_writer would look like this:
The attr_reader method takes the names of the object’s attributes as arguments and 
automatically creates getter methods for each. We can replace our getter methods 
with attr_reader and our book class definition becomes much simpler:


#   attr-accessor
However, when using the attr_reader and attr_writer methods, we still have to 
repeat all of the property names for each method twice.
attr_accessor is a shortcut method when you need both attr_reader and attr_writer