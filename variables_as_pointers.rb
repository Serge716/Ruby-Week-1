a = 'hi, there'
b = a
a.gsub!(' ', '_')
puts b # what's the output?  hi,_there

a = 'hi, there'
b = a
a = [1, 2, 3]
puts b # what's the output? hi, there

# What's the difference between the two code examples
# example 1 a and b are still in the same physical location in memory gsub mutated the value,
# the affected both variables

#example 2 a was assigned to a new location in memory, b is still in the old lacation of a