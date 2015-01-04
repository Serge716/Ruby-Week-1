# # Display Tic Tac Toe Board
# # Place pick a number between 1 and 9 and it shows an X on the location
# # Computer pick a random 0 to counter player
# # 5 Turns for the player
# # 4 Turns for Computer
# # Winner = 3 in a row 
 
# # choices = {"1" => " ", "2" => " ", "3" => " ", "4" => " ", "5" => " ",
# #             "6" => " ", "7" => " ", "8" => " ", "9" => " "}

# position1_grid1_1 = "     "
# position1_grid2_1 = "|     "
# position1_grid3_1 = "|     "

# top_row_one = position1_grid1_1 + position1_grid2_1 + position1_grid3_1

# value_for_grid1 = "     "
# value_for_grid2 = "|     "
# value_for_grid3 = "|     "

# print_top_row_selection = value_for_grid1 + value_for_grid2 + value_for_grid3

# position1_grid1_3 = "     "
# position1_grid2_3 = "|     "
# position1_grid3_3 = "|     "

# top_row_three = position1_grid1_3 + position1_grid2_3 + position1_grid3_3

# seperator1_grid1_1 = "-----+"
# seperator1_grid1_2 = "-----+"
# seperator1_grid1_3 = "-----"

# seperator_one = seperator1_grid1_1 + seperator1_grid1_2 + seperator1_grid1_3

# ##########POSITION 2#############
# position2_grid1_1 = "     "
# position2_grid2_1 = "|     "
# position2_grid3_1 = "|     "

# middle_row_one = position2_grid1_1 + position2_grid2_1 + position2_grid3_1

# position2_grid1_2 = "     "
# position2_grid2_2 = "|     "
# position2_grid3_2 = "|     "

# middle_row_two = position2_grid1_2 + position2_grid2_2 + position2_grid3_2

# position2_grid1_3 = "     "
# position2_grid2_3 = "|     "
# position2_grid3_3 = "|     "

# middle_row_three = position2_grid1_3 + position2_grid2_3 + position2_grid3_3

# seperator2_grid1_1 = "-----+"
# seperator2_grid1_2 = "-----+"
# seperator2_grid1_3 = "-----"

# seperator_two = seperator2_grid1_1 + seperator2_grid1_2 + seperator2_grid1_3

# #############POSITION 3#########

# position3_grid1_1 = "     "
# position3_grid2_1 = "|     "
# position3_grid3_1 = "|     "

# bottom_row_one = position3_grid1_1 + position3_grid2_1 + position3_grid3_1

# position3_grid1_2 = "     "
# position3_grid2_2 = "|     "
# position3_grid3_2 = "|     "

# bottom_row_two = position3_grid1_2 + position3_grid2_2 + position3_grid3_2

# position3_grid1_3 = "     "
# position3_grid2_3 = "|     "
# position3_grid3_3 = "|     "

# bottom_row_three = position3_grid1_3 + position3_grid2_3 + position3_grid3_3

# # choices = {"1" => " ", "2" => " ", "3" => " ", "4" => " ", "5" => " ",
# #             "6" => " ", "7" => " ", "8" => " ", "9" => " "}

# # game_board = [top_row_one, top_row_two, top_row_three, seperator_one, middle_row_one, 
# #               middle_row_two, middle_row_three, seperator_two, bottom_row_one, bottom_row_two, 
# #               bottom_row_three]

#   my_choice = gets.chomp

#   case my_choice
#   when "1"
#     value_for_grid1 = "  X  "
#     # choices["1"] = "X"
#   when "2"
#     value_for_grid2 = "  X  "
#     # choices["2"] = "X"
#   when "3"
#     value_for_grid3 = "  X  "
#     # choices["3"] = "X"
#   when "4"
#     # choices["4"] = "X"
#   when "5"
#     # choices["5"] = "X"
#   when "6"
#     # choices["6"] = "X"
#   when "7"
#     # choices["7"] = "X"
#   when "8"
#     # choices["8"] = "X"
#   when "9"
#     # choices["9"] = "X"
#   end

# #puts choices
# puts value_for_grid1
# puts value_for_grid2
# puts value_for_grid3

# game_board = [top_row_one, print_top_row_selection, top_row_three, seperator_one, middle_row_one, 
#               middle_row_two, middle_row_three, seperator_two, bottom_row_one, bottom_row_two, 
#               bottom_row_three]

# puts game_board

# # position1_grid1_1 = "     "
# # position1_grid2_1 = "|     "
# # position1_grid3_1 = "|     "

# # puts position1_grid1_1 + position1_grid2_1 + position1_grid3_1

# # position1_grid1_2 = "  #{choices["1"]}  "
# # position1_grid2_2 = "|  #{choices["2"]}  "
# # position1_grid3_2 = "|  #{choices["3"]}  "

# # puts position1_grid1_2 + position1_grid2_2 + position1_grid3_2

# # position1_grid1_3 = "     "
# # position1_grid2_3 = "|     "
# # position1_grid3_3 = "|     "

# # puts position1_grid1_3 + position1_grid2_3 + position1_grid3_3

# # seperator1_grid1_1 = "-----+"
# # seperator1_grid1_2 = "-----+"
# # seperator1_grid1_3 = "-----"

# # puts seperator1_grid1_1 + seperator1_grid1_2 + seperator1_grid1_3

# # ##########POSITION 2#############
# # position2_grid1_1 = "     "
# # position2_grid2_1 = "|     "
# # position2_grid3_1 = "|     "

# # puts position2_grid1_1 + position2_grid2_1 + position2_grid3_1

# # position2_grid1_2 = "  #{choices["4"]}  "
# # position2_grid2_2 = "|  #{choices["5"]}  "
# # position2_grid3_2 = "|  #{choices["6"]}  "

# # puts position2_grid1_2 + position2_grid2_2 + position2_grid3_2

# # position2_grid1_3 = "     "
# # position2_grid2_3 = "|     "
# # position2_grid3_3 = "|     "

# # puts position2_grid1_3 + position2_grid2_3 + position2_grid3_3

# # seperator2_grid1_1 = "-----+"
# # seperator2_grid1_2 = "-----+"
# # seperator2_grid1_3 = "-----"

# # puts seperator2_grid1_1 + seperator2_grid1_2 + seperator2_grid1_3

# # #############POSITION 3#########

# # position3_grid1_1 = "     "
# # position3_grid2_1 = "|     "
# # position3_grid3_1 = "|     "

# # puts position3_grid1_1 + position3_grid2_1 + position3_grid3_1

# # position3_grid1_2 = "  #{choices["7"]}  "
# # position3_grid2_2 = "|  #{choices["8"]}  "
# # position3_grid3_2 = "|  #{choices["9"]}  "

# # puts position3_grid1_2 + position3_grid2_2 + position3_grid3_2

# # position3_grid1_3 = "     "
# # position3_grid2_3 = "|     "
# # position3_grid3_3 = "|     "

# # puts position3_grid1_3 + position3_grid2_3 + position3_grid3_3

possible_choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]

user_choice = gets.chomp.to_i

players_choice = user_choice - 1

possible_choices.slice!(players_choice)

computer_choice = possible_choices.sample

computer_choice_to_array_location = computer_choice - 1

def format_remaining_choice(choices, user_or_computer_choice)
  choices.slice!(user_or_computer_choice)
end

format_remaining_choice(possible_choices, computer_choice_to_array_location)
# possible_choices.slice!(computer_choice_to_array_location)



puts "*****************************"
puts computer_choice

puts "*****************************"

puts possible_choices 
  



