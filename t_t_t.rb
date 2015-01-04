seperator_one = "---+"
seperator_two = "---+"
seperator_three = "---"

seperator = seperator_one + seperator_two + seperator_three

value_for_grid1 = "   "
value_for_grid2 = "|   "
value_for_grid3 = "|   "

# print_top_row_selection = value_for_grid1 + value_for_grid2 + value_for_grid3

# seperator = seperator1_grid1_1 + seperator1_grid1_2 + seperator1_grid1_3

value_for_grid4 = "   "
value_for_grid5 = "|   "
value_for_grid6 = "|   "

# print_middle_row_selection = value_for_grid4 + value_for_grid5 + value_for_grid6

# seperator = seperator1_grid1_1 + seperator1_grid1_2 + seperator1_grid1_3

value_for_grid7 = "   "
value_for_grid8 = "|   "
value_for_grid9 = "|   "

# print_bottom_row_selection = value_for_grid7 + value_for_grid8 + value_for_grid9

puts value_for_grid1 + value_for_grid2 + value_for_grid3
puts seperator
puts value_for_grid4 + value_for_grid5 + value_for_grid6
puts seperator
puts value_for_grid7 + value_for_grid8 + value_for_grid9

  # case my_choice
  # when "1"
  #   value_for_grid1 = " X "
  # when "2"
  #   value_for_grid2 = "| X "
  # when "3"
  #   value_for_grid3 = "| X "
  # when "4"
  #   value_for_grid4 = " X "
  # when "5"
  #   value_for_grid5 = "| X "
  # when "6"
  #   value_for_grid6 = "| X "
  # when "7"
  #   value_for_grid7 = " X "
  # when "8"
  #   value_for_grid8 = "| X "
  # when "9"
  #   value_for_grid9 = "| X "
  # end

def computer_selection_logic(user_choice )
  
end

possible_choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]

loop do
  my_choice = gets.chomp.to_i
  user_choice = my_choice - 1

  possible_choices.slice!(user_choice)
  puts "**********************"
  puts possible_choices

  puts "***************************"

  computer_choice = possible_choices.sample
  # computer_selection_logic = computer_choice 

  puts "**********************"

  # puts puts computer_selection_logic
  puts "*********************"
  possible_choices.slice!(computer_choice)
  puts
  puts
  puts
  puts possible_choices
  
  if my_choice == 1
    value_for_grid1 = " X "

    # if value_for_grid1 == " X "
    #   computer_choice = rand(1..3)
    #   if computer_choice == 1 && (value_for_grid2 == "|   ")
    #     value_for_grid2 = "| O "
    #   elsif computer_choice == 2 && value_for_grid4 == "   "
    #     value_for_grid4 = " O "
    #   elsif computer_choice == 3 && value_for_grid5 == "|   "
    #     value_for_grid5 = "| O "
    #   end
    # end

  elsif my_choice == 2
    value_for_grid2 = "| X "
    
    # if value_for_grid2 == "| X "
    #   computer_choice = rand(1..4)
    #   if computer_choice == 1 && value_for_grid1 == "   "
    #     value_for_grid1 = " O "
    #   elsif computer_choice == 2 && value_for_grid3 == "|   "
    #     value_for_grid3 = "| O "
    #   elsif computer_choice == 3 && value_for_grid4 == "   "
    #     value_for_grid4 = " O "
    #   elsif computer_choice == 4 && value_for_grid5 == "|   "
    #     value_for_grid5 = "| O "
    #   end
    # end

  elsif my_choice == 3
    value_for_grid3 = "| X "

    # if value_for_grid3 == "| X "
    #   computer_choice = rand(1..3)
    #   if computer_choice == 1 && value_for_grid5 == "|   "
    #     value_for_grid5 = "| O "
    #   elsif computer_choice == 2 && value_for_grid6 == "|   "
    #     value value_for_grid6 = "| O "
    #   elsif computer_choice == 3 and value_for_grid2 == "|   "
    #     value_for_grid2 = "| O "
    #   end
    # end

  elsif my_choice == 4
    value_for_grid4 = " X "

    # if value_for_grid4 == " X "
    #   computer_choice = rand(1..4)
    #   if computer_choice == 1 && value_for_grid1 == "   "
    #     value_for_grid1 = " O "
    #   elsif computer_choice == 2 && value_for_grid3 == "|   "
    #     value_for_grid3 = "| O "
    #   elsif computer_choice == 3 && value_for_grid5 == "|   "
    #     value_for_grid5 = "| O "
    #   elsif computer_choice == 4 && value_for_grid9 == "|   "
    #     value_for_grid9 = "| O "
    #   end
    # end 

  elsif my_choice == 5
    value_for_grid5 = "| X "

    # if value_for_grid5 == "| X "
    #   computer_choice = rand(1..4)
    #   if computer_choice == 1 && value_for_grid1 == "   "
    #     value_for_grid1 = " O "
    #   elsif computer_choice == 2 && value_for_grid3 == "|   "
    #     value_for_grid3 = "| O "
    #   elsif computer_choice == 3 && value_for_grid7 == "   "
    #     value_for_grid7 = " O "
    #   elsif computer_choice == 4 && value_for_grid9 == "|   "
    #     value_for_grid9 = "| O "
    #   end
    # end

  elsif my_choice == 6
    value_for_grid6 = "| X "

    # if value_for_grid6 == "| X "
    #   computer_choice = rand(1..7)
    #   if computer_choice == 1 && value_for_grid1 == "   "
    #     value_for_grid1 = " O "
    #   elsif computer_choice == 2 && value_for_grid2 == "|   "
    #     value_for_grid2 = "| O "
    #   elsif computer_choice == 3 && value_for_grid3 == "|   "
    #     value_for_grid3 = "| O "
    #   elsif computer_choice == 4 && value_for_grid5 == "|   "
    #     value_for_grid5 = "| O "
    #   elsif computer_choice == 5 && value_for_grid7 == "   "
    #     value_for_grid7 = " O "
    #   elsif computer_choice == 6 && value_for_grid8 == "|   "
    #     value_for_grid8 = "| O "
    #   elsif computer_choice == 7 && value_for_grid9 == "|   "
    #     value_for_grid9 = "| O "
    #   end
    # end

  elsif my_choice == 7
    value_for_grid7 = " X "

    # if value_for_grid7 == " X "
    #   computer_choice = rand(1..4)
    #   if computer_choice == 1 && value_for_grid1 == "   "
    #     value_for_grid1 = " O "
    #   elsif computer_choice == 2 && value_for_grid3 == "|   "
    #     value_for_grid3 = "| O "
    #   elsif computer_choice == 3 && value_for_grid5 == "|   "
    #     value_for_grid5 = "| O "
    #   elsif computer_choice == 4 && value_for_grid9 == "|   "
    #     value_for_grid9 = "| O "
    #   end
    # end

  elsif my_choice == 8
    value_for_grid8 = "| X "

    # if value_for_grid8 == "| X " && value_for_grid5 == "| X "
    #   computer_choice = 2
    #   if computer_choice == 2
    #     value_for_grid2 = "| O "
    #   end
    # else
    #   computer_choice = 1
    #   if computer_choice == 1
    #     value_for_grid1 = " O "
    #   end
    # end

  elsif my_choice == 9
    value_for_grid9 = "| X "
  end

  if computer_choice == 1
    value_for_grid1 = " O "
  elsif computer_choice == 2
    value_for_grid2 = "| O "
  elsif computer_choice == 3
    value_for_grid3 = "| O "
  elsif computer_choice == 4
    value_for_grid4 = " O "
  elsif computer_choice == 5
    value_for_grid5 = "| O "
  elsif computer_choice == 6
    value_for_grid6 = "| O "
  elsif computer_choice == 7
    value_for_grid7 = " O "
  elsif computer_choice == 8
    value_for_grid8 = "| O "
  elsif computer_choice == 9
    value_for_grid9 = "| O "
  end

  puts value_for_grid1 + value_for_grid2 + value_for_grid3
  puts seperator
  puts value_for_grid4 + value_for_grid5 + value_for_grid6
  puts seperator
  puts value_for_grid7 + value_for_grid8 + value_for_grid9
end

puts possible_choices

# puts print_top_row_selection
# puts seperator
# puts middle_row_two
# puts seperator
## puts bottom_row_two