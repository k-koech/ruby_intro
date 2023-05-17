student = { name: "Moesha", age: "16", role:"Student",
 address: {
    street: "123 Fake Street",
    city: "Queens",
    state: "NY"
  } }

# Accessing
for i in student
    print i[1]
end

# puts student[:address][:city]

student[:name] = "John" #updated a name

# methods
student.delete(:address)

{}.empty? # check if hash is empty
# pizza_toppings.merge(more_toppings) #
