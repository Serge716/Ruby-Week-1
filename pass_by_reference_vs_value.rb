# Create a method that takes an array as a parameter. Within that method, 
# try calling methods that do not mutate the caller. How does that affect the array outside of the method? 
# What about when you call a method that mutates the caller within the method?

def my_method(arr)
  arr.uniq
end

my_arr = [1, 2, 2, 3]
my_method(my_arr)
puts my_arr # => was the outer scope array affectd by the mothod invocation? NO "passed by value"

def mutate(arr)
  arr.uniq!
end

my_arr = [1, 2, 2, 3]
mutate(my_arr)
puts my_arr # => was the outer scope array affected by the method invocation? Yes, the array was mutated
            # pass by reference
