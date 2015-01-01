# Code up your own calculator from the lecture. Make sure you can run it from the command line. 
# Save the calculator file in a directory, and initialize the directory as a git repository. 
# Make sure this isn't nested in another existing git repository. Then, push this git repository to Github.

def say(msg)
  puts "====> #{msg}"
end

begin
  say "What is your first number?"
  num1 = gets.chomp
  say "Your number is #{num1}"

  say "What is your second number?"
  num2 = gets.chomp
  say "Your number is #{num2}"

  say "1) Add, 2) Subtract, 3) Multiply, 4) Divide"
  operator = gets.chomp

  if operator == '1'
    result = num1.to_i + num2.to_i
  elsif operator == '2'
    result = num1.to_i - num2.to_i
  elsif operator == '3'
    result = num1.to_i * num2.to_i
  else
    result = num1.to_f / num2.to_f
  end

  say result

  say "Press 'Enter' to use again, or Type 'NO' to exit"
  answer = gets.chomp
  answer.downcase
end while answer != 'no'
