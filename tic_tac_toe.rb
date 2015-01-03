# Display Tic Tac Toe Board
# Place pick a number between 1 and 9 and it shows an X on the location
# Computer pick a random 0 to counter player
# 5 Turns for the player
# 4 Turns for Computer
# Winner = 3 in a row 
 
choices = {"1" => " ", "2" => " ", "3" => " ", "4" => " ", "5" => " ",
            "6" => " ", "7" => " ", "8" => " ", "9" => " "}

position1_grid1_1 = "     "
position1_grid2_1 = "|     "
position1_grid3_1 = "|     "

top_row_one = position1_grid1_1 + position1_grid2_1 + position1_grid3_1

position1_grid1_2 = " "#"  #{choices["1"]}  "
position1_grid2_2 = "|  #{choices["2"]}  "
position1_grid3_2 = "|  #{choices["3"]}  "

top_row_two = position1_grid1_2 + position1_grid2_2 + position1_grid3_2

position1_grid1_3 = "     "
position1_grid2_3 = "|     "
position1_grid3_3 = "|     "

top_row_three = position1_grid1_3 + position1_grid2_3 + position1_grid3_3

seperator1_grid1_1 = "-----+"
seperator1_grid1_2 = "-----+"
seperator1_grid1_3 = "-----"

seperator_one = seperator1_grid1_1 + seperator1_grid1_2 + seperator1_grid1_3

##########POSITION 2#############
position2_grid1_1 = "     "
position2_grid2_1 = "|     "
position2_grid3_1 = "|     "

middle_row_one = position2_grid1_1 + position2_grid2_1 + position2_grid3_1

position2_grid1_2 = "  #{choices["4"]}  "
position2_grid2_2 = "|  #{choices["5"]}  "
position2_grid3_2 = "|  #{choices["6"]}  "

middle_row_two = position2_grid1_2 + position2_grid2_2 + position2_grid3_2

position2_grid1_3 = "     "
position2_grid2_3 = "|     "
position2_grid3_3 = "|     "

middle_row_three = position2_grid1_3 + position2_grid2_3 + position2_grid3_3

seperator2_grid1_1 = "-----+"
seperator2_grid1_2 = "-----+"
seperator2_grid1_3 = "-----"

seperator_two = seperator2_grid1_1 + seperator2_grid1_2 + seperator2_grid1_3

#############POSITION 3#########

position3_grid1_1 = "     "
position3_grid2_1 = "|     "
position3_grid3_1 = "|     "

bottom_row_one = position3_grid1_1 + position3_grid2_1 + position3_grid3_1

position3_grid1_2 = "  #{choices["7"]}  "
position3_grid2_2 = "|  #{choices["8"]}  "
position3_grid3_2 = "|  #{choices["9"]}  "

bottom_row_two = position3_grid1_2 + position3_grid2_2 + position3_grid3_2

position3_grid1_3 = "     "
position3_grid2_3 = "|     "
position3_grid3_3 = "|     "

bottom_row_three = position3_grid1_3 + position3_grid2_3 + position3_grid3_3

# choices = {"1" => " ", "2" => " ", "3" => " ", "4" => " ", "5" => " ",
#             "6" => " ", "7" => " ", "8" => " ", "9" => " "}

game_board = [top_row_one, top_row_two, top_row_three, seperator_one, middle_row_one, 
              middle_row_two, middle_row_three, seperator_two, bottom_row_one, bottom_row_two, 
              bottom_row_three]

puts game_board
  my_choice = gets.chomp

  case my_choice
  when "1"
    position1_grid1_2 = "  X  "
    # choices["1"] = "X"
  when "2"
    choices["2"] = "X"
  when "3"
    choices["3"] = "X"
  when "4"
    choices["4"] = "X"
  when "5"
    choices["5"] = "X"
  when "6"
    choices["6"] = "X"
  when "7"
    choices["7"] = "X"
  when "8"
    choices["8"] = "X"
  when "9"
    choices["9"] = "X"
  end

  puts game_board
  puts choices



