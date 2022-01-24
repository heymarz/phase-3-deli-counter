# "The line is currently: 1. Ada 2. Grace 3. Kent"
# "The line is currently empty."
def line(deli)
  if deli.empty?
   puts "The line is currently empty."
  else 
   current_line = "The line is currently:"
   deli.each.with_index(1) do |person, i|
    current_line << " #{i}. #{person}"
   end
   puts current_line
  end
end

#take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
def take_a_number(deli, person)
  deli << person
  puts "Welcome, #{person}. You are number #{deli.length} in line."
end

#now_serving(katz_deli) #=> "Currently serving Ada."
def now_serving(deli)
  if deli.empty?
   puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."
    deli.shift
end
end
