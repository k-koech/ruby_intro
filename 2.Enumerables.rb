# forEach: access each element from an array. Returns the original array.

# map: access each element from an array, and return a new array, usually by transforming (mapping) the values to some new value.
upcased = ["this", "is", "Ruby"].map do |str|
    str.upcase
  end

  ["this", "is", "Ruby"].map.with_index do |str, index|
    if index.even?
      str.upcase
    else
      str
    end
  end
  #--------
  book = { title: "The Hobbit", author: "J. R. R. Tolkien", published: 1937 }
book.each do |key, value|
  puts "Key: #{key}"
  puts "Value: #{value}"
end

# find: access each element from an array, and return the first value that matches some criteria.

# filter: access each element from an array, and return a new array of all values that matches some criteria.
numbers = [1, 2, 3, 4, 5, 6]

filtered_numbers = numbers.select { |number| number.even? }

puts filtered_numbers
# Output: [2, 4, 6]