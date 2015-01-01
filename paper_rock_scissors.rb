def say(msg)
  puts "==>#{msg}"
end

def selection(my_pic, computer_pic)
 "You picked #{my_pic} and computer picked #{computer_pic}"
end

user_won = "You won!"
computer_won = "Computer won!"
tie = "It's a tie."

begin
  say "Play Paper Rock Scissors!"
  say "Choose one: (P/R/S)"

  choice = gets.chomp.downcase

  if choice == 'p'
    my_choice = 'Paper'
  elsif choice == 'r'
    my_choice = 'Rock'
  elsif choice == 's'
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

  if my_choice == computer
    say selection(my_choice, computer)
    say tie

  elsif my_choice == 'Paper' && computer == 'Scissors'
    say selection(my_choice, computer)
    say "#{computer} cut #{my_choice}"
    say computer_won

  elsif my_choice == 'Paper' && computer == 'Rock'
    say selection(my_choice, computer)
    say "#{my_choice} wraps #{computer}"
    say user_won

  elsif my_choice == 'Rock' && computer == 'Paper'
    say selection(my_choice, computer)
    say "#{computer} wraps #{my_choice}"
    say computer_won

  elsif my_choice == 'Rock' && computer == 'Scissors'
    say selection(my_choice, computer)
    say "#{my_choice} breaks #{computer}"
    say user_won

  elsif my_choice == 'Scissors' && computer == 'Paper'
    say selection(my_choice, computer)
    say "#{my_choice} cuts #{computer}"
    say user_won
  
  elsif my_choice == 'Scissors' && computer == 'Rock'
    say selection(my_choice, computer)
    say "#{computer} breaks #{my_choice}"
    say user_won
  end

  say "Play again? (Y/N)"
  answer = gets.chomp
  answer.downcase
end while answer != 'n'
