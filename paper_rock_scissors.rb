# Welcome to game message
# player pics paper, rock, or cissor
# computer pics
# compare: player or computer wins
# Again (Y/N)
def winning_message(player)
  case player
  when 'Paper'
    puts "Paper wraps rock"
  when 'Rock'
    puts "Rock breaks scissors"
  when 'Scissors'
    puts "Scissors cuts paper"
  end
end

begin
  puts "Welcome to Paper, Rock, Scissors Game"
  puts "Choose one: (P/R/S)"

  player_choice = gets.chomp.downcase

  def validated_player_input(input)
    if input == 'p'
      "Paper"
    elsif input == 'r'
      "Rock"
    elsif input == 's'
      "Scissors"
    else
      if input != "Paper" || input != "Rock" || input != "Scissors"
        puts "Choose one: (P/R/S)"
        player_choice = player_input(gets.chomp.downcase)
      end
    end
  end

  def artificial_intelligence(number=rand(1..3))
    if number == 1
      computer_choice = "Paper"
    elsif number == 2
      computer_choice = "Rock"
    elsif number ==3
      computer_choice = "Scissors"
    end
  end

  computer_choice = artificial_intelligence

   player_choice = validated_player_input(player_choice)

  def display_user_and_computer_selection(user, computer)
    puts "You picked #{user} and computer picked #{computer}"
  end

  if player_choice == "Paper" && computer_choice == "Paper"
    display_user_and_computer_selection(player_choice, computer_choice)
    puts "Its a tie"

  elsif player_choice == "Paper" && computer_choice == "Rock" || 
        player_choice == "Rock" && computer_choice == "Scissors" ||
        player_choice == "Scissors" && computer_choice == "Paper"
        puts "You won!"
        winning_message(player_choice)
  else
    puts "Computer Won!"
    winning_message(computer_choice)
  end

  puts "Play again? (Y/N)"
  answer = gets.chomp.downcase
end while answer != 'n'


############################# OLD VERSION ##########################
# def say(msg)
#   puts "==>#{msg}"
# end

# def selection(my_pic, computer_pic)
#  "You picked #{my_pic} and computer picked #{computer_pic}"
# end

# user_won = "You won!"
# computer_won = "Computer won!"
# tie = "It's a tie."

# begin
#   say "Play Paper Rock Scissors!"
#   say "Choose one: (P/R/S)"

#   choice = gets.chomp.downcase

#   if choice == 'p'
#     my_choice = 'Paper'
#   elsif choice == 'r'
#     my_choice = 'Rock'
#   elsif choice == 's'
#     my_choice = 'Scissors'
#   else
#     say 'Choose (P/R/C)'
#   end

#   artificial_intelligence = rand(1..3)

#   if artificial_intelligence == 1
#     computer = 'Paper'
#   elsif artificial_intelligence == 2
#     computer = 'Rock'
#   else artificial_intelligence == 3
#     computer = 'Scissors'
#   end

#   if my_choice == computer
#     say selection(my_choice, computer)
#     say tie

#   elsif my_choice == 'Paper' && computer == 'Scissors'
#     say selection(my_choice, computer)
#     say "#{computer} cut #{my_choice}"
#     say computer_won

#   elsif my_choice == 'Paper' && computer == 'Rock'
#     say selection(my_choice, computer)
#     say "#{my_choice} wraps #{computer}"
#     say user_won

#   elsif my_choice == 'Rock' && computer == 'Paper'
#     say selection(my_choice, computer)
#     say "#{computer} wraps #{my_choice}"
#     say computer_won

#   elsif my_choice == 'Rock' && computer == 'Scissors'
#     say selection(my_choice, computer)
#     say "#{my_choice} breaks #{computer}"
#     say user_won

#   elsif my_choice == 'Scissors' && computer == 'Paper'
#     say selection(my_choice, computer)
#     say "#{my_choice} cuts #{computer}"
#     say user_won
  
#   elsif my_choice == 'Scissors' && computer == 'Rock'
#     say selection(my_choice, computer)
#     say "#{computer} breaks #{my_choice}"
#     say user_won
#   end

#   say "Play again? (Y/N)"
#   answer = gets.chomp
#   answer.downcase
# end while answer != 'n'
