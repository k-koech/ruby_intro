# map
numbers = [12, 45,786, 17, 9, 17, 162]

evenNumbers = numbers.map do |number|
  
   if number%2==0 
      number
   end
    

end.compact

print evenNumbers
