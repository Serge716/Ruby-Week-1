def say(msg)
  puts "==>#{msg}"
end

say "Play Paper Rock Scissors!"
say "Choose one: (P/R/S)"

choice = gets.chomp
choice.downcase

if choice == 'p'
  my_choise = 'Paper'
elsif choice == 'r'
  my_choice = 'Rock'
elsif choice == 'S'
  my_choice = 'Scissors'
else
  say 'Choose (P/R/C)'
end

ai = rand(1..3)

if ai == 1
  computer = 'Paper'
elsif ai == 2
  computer = 'Rock'
else ai == 3
  computer = 'Scissors'
end

say "You picked #{my_choise} and computer picked #{computer}"

