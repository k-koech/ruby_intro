"""
Inheritance
- Ruby is an object-oriented language that supports inheritance. 
- It supports single class inheritance, but multiple class inheritance is not 
supported.which means that one class can inherit from the other class, 
but it can't inherit from two super classes. Ruby provides something called mixins 
that one can make use of.


 Advantages
   - reduction in duplication that comes from defining methods on a
     Parent class that can then be used across many child classes.
	 => Enables code reusability


Keywords
Inheritance involves the use of super and sub-classes.

 - super class: This is the class from which the functions and variables are 
   inherited. This is the parent class, also known as the base class.
 - sub class: This is the class that inherits functions and variables from the 
   super class. This is the child class, also known as the derived class.

  ==> super calls a parent method of the same name, with the same arguments. 
   It's very useful to use for inherited classes.
   A constructor is a special method of a class or structure in object-oriented 
   programming that initializes a newly created object of that type. Whenever an object is created, the constructor is called automatically.
"""

# Inheritance in Ruby

# this is the super class
class Educative
	@@name="Moesha"
	# constructor of super class
	def initialize
		puts "Super class constructor"
	end
	
	# method of the superclass
	def super_adder(x, y)
		puts "Using method of superclass:"
        return x+y
	end
end

# subclass or sub class
class Edpresso < Educative 

	# constructor of sub class
	def initialize
	   puts "Sub class constructor"
	end

	def super_adder(x, y)
		# puts "Using method of subclass:"
        # return x+y
		puts @@name
		super
        
	end
end

# creating object of superclass
# Educative.new

# creating object of subclass
sub_obj = Edpresso.new

# calling the method of super class using sub class object
added = sub_obj.super_adder(2,3)
print "sum = ", added