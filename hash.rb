student = {"name":"Charles", "age":"23", "role":"student", 
            "address":{"town":"NRB", 'street':"Marist" }}

# for i in student
#    print "#{i[1]}  "
# end
student.delete(:name)
puts student.empty?
# name, age, role, address