"""
METAPROGRAMMING
 => Metaprogramming refers to the ability of a program to analyze, modify, or generate
 code at runtime. In Ruby, metaprogramming is a powerful feature that allows you 
 to write code that can create, modify, or extend classes, methods, and other 
 program constructs dynamically.
metaprogramming allows us to essentially write code that writes code
 -Adv > you’ll be able to write code that is DRYer, lighter, more intuitive and more scalable.
"""
class MyClass
    def self.add_method(name)
      define_method(name) do
        puts "Hello, #{name}!"
      end
    end
  end
"""   - MyClass that has a metaprogramming method add_method
-This method takes a name parameter and dynamically defines a new instance 
   method with that name.
 -Inside the add_method method, we use the define_method method provided by Ruby's
  metaprogramming capabilities. This method takes a symbol or string representing 
  the name of the method to define,
"""
  MyClass.add_method("greet")
  MyClass.add_method("Talk")
  obj = MyClass.new
  obj.greet
  obj.Talk
  

#   Example 2 - mass assignment
"""
Mass assignment in Ruby refers to the practice of assigning multiple attribute 
values to an object in a single operation.
"""
class Student
    attr_accessor :name, :age, :email
    
    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  end
  
  studentHash={name: "John", age: 25, email: "john@example.com"}
  student1 = Student.new(studentHash)
  puts student1.name  # Output: John
  puts student1.age   # Output: 25
  puts student1.email # Output: john@example.com
  """
  
  In the above example, we have a Studentnt class with three attributes: name, age, and email. By using 
  the attr_accessor method, we automatically create getter and setter methods for each attribute.

In the initialize method, we accept a hash of attributes as an argument. We iterate over each key-value 
pair in the attributes hash and use the send method to dynamically call the setter method for each 
attribute, setting its value.

By passing a hash of attribute values (name: "John", age: 25, email: "john@example.com") when creating
 a new Person object (Person.new(...)), we can easily assign multiple attribute values at once using 
 mass assignment.

This approach allows for concise and flexible initialization of objects with multiple attributes, 
reducing the amount of repetitive code required to set each attribute individually.

It's important to note that while mass assignment provides convenience, it can also introduce security risks if not handled properly. In scenarios where user input is used for mass assignment, it's essential to validate and sanitize the input to prevent malicious attacks like mass assignment vulnerabilities.


  """