# Arrays
students = ["Sharon", "Gerald", "Charles", "Austin", "Benayah"]

# accessing
 students[2]
 students.first
 students.last
 students.length
  # slice - slice method to access multiple elements from an array
  students.slice(0, 2)  # Sharon, Gerald

# looping
for i in students
   "#{i} is index #{students.find_index(i)}"
end

# Array methods
# Adding elements to an Array
  #push and #unshift methods can be used to add elements to the end or beginning of arrays respectively:
   students.push("Dennis") #end
   students.unshift("Emilly")   #start
#  Combine arrays

# Removing elements from Array
students.pop # removes the last
students.shift #removes the first

# [1, 2, 3].sum
# letters.include?("a")
# letters.reverse
# [1, 1, 2, 3, 5].uniq

puts [1, 2, 3].sum #same as reduce method in JS

print 


