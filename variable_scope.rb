# a) re-assigning the variable to something else

x = 4
loop do 
  x = 'hey there'
  break
end

puts x # => What's x? hey there

# b) call a method that doesn’t mutate the caller

def no_mutate(arr)
  arr.uniq
end

my_arr = [1, 2, 2, 3]
no_mutate(my_arr)
puts my_arr # => what's the output?  (same) [1, 2, 2, 3]

# c) call a method that mutates the caller. 

def yes_mutate(arr)
  arr.uniq!
end

my_arr = [1, 2, 2, 3]
yes_mutate(my_arr)
puts my_arr # +=> what's the output? [1, 2, 3]

# 2 Create a local variable at an inner scope and try to reference it in the outer scope. 
# What happens when you have nested do/end blocks? Perform similar code experiments as outlined in 
#1. Make sure to take your time to play around with different scenarios here.

def inner_var
  my_var = 8
end

puts my_var # error message undefined local variable

loop do 
  x = 'hello, world'
  break
end

puts x #  x can still be accessed in the outer scope

# 3 How does variable scope rules pertain to methods?

x = 'hi'

def my_method
  puts x
end

my_method # => what’s the output of invoking the “my_method” method? Error undefined local variable,
            #my method created its own scope,
                