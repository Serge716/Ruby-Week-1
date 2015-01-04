# draw board
# player picks a number from an empty square
#   assign an X to empty square
# computer picks a number from empty square
#   assin O to empty square
# check for winner after every pic
require "pry"

def initialize_board
  b = {}
  (1..9).each {|k, v| b[k] = " "}
  b
end
board = initialize_board

def draw_board(b)
  system "clear"
  puts " #{b[1]} | #{b[2]} | #{b[3]} "
  puts "---+---+---"
  puts " #{b[4]} | #{b[5]} | #{b[6]} "
  puts "---+---+---"
  puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def empty_position(b)
  b.select {|k, v| v == " "}.keys
end

def player_picks_number(b)
  begin
  puts "Pick a position (1-9):"
  position = gets.chomp.to_i
end until empty_position(b).include?(position)
  b[position] = "X"
end


def computer_picks_number(b)
  position = empty_position(b).sample
  b[position] = "O"
end

def check_winner(board)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    return "Player" if board.values_at(*line).count('X') == 3
    return "Computer" if board.values_at(*line).count('O') == 3
  end
  nil
end

begin
  draw_board(board)

  player_picks_number(board)
  draw_board(board)
  computer_picks_number(board)
  winner = check_winner(board)
end until winner || empty_position(board).empty?

if winner
  puts "#{winner} Won!"
else
  puts "Its a tie"
end