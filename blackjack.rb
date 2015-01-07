# Logic
# 1) Represent a deck of 52 cards
 
# 2)  4 suites from low to high:
#       13 clubs
#       13 diamonds
#       13 hearts
#       13 spades

# 3)  card value:
#     1 to 10 = face value
#     J to K = 10
#     Ace = 1 or 11

# 4)  Dealer deals a card to the player and a facedown cards to self
# 5)  Dealer deals another card to player and a faceup card to self

# 6) Player evaluate card value
#     choose hit or stay
#     hit: player is given another card
#     stay: player card value is compared to dealer card
#     if player card value is higher tha dealer card
#       dealer deals another card to self

# 7)  player wins if vard value 21 or greater than dealer value
# 8)  player busts if card value is greater than 21

require 'pry'
puts "Welcome to Blackjack"

card_faces = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

def create_card_suits(suit, range)
  card_suit = {}
  (range).each {|value| card_suit[value] = "#{value} of #{suit}"}
  # (range).each {|key, value| card_suit[key] = "#{key} of #{suit}"}
  card_suit
end

def make_deck_of_cards(suit1, suit2, suit3, suit4)
  suit1.concat([suit2, suit3, suit4])
end

def deal_cards
  card_deck.pop
end

clubs = create_card_suits("Clubs", card_faces).values
diamonds = create_card_suits("Diamonds", card_faces).values
hearts = create_card_suits("Hearts", card_faces).values
spades = create_card_suits("Spades", card_faces).values

card_deck = make_deck_of_cards(clubs, diamonds, hearts, spades).flatten!

shuffle_cards = card_deck.shuffle!

def deal_cards(card_deck)
  cards = card_deck.pop
  cards
end

def calculate_total(card_value)
  total = 0
  aces = card_value.each do |card|
    card.to_s
    # Collect A and set it to 11
    if card[0] == "A"
      total += 11
    elsif card.to_i == 0
      total += 10
    else
      total += card.to_i
    end
  end
  # correct Aces
  aces.select{ |e| e[0] == "A"}.count.times do
    total -= 10 if total > 21
  end
  total
end

def calculate_total_points(card1, card2, card3, card4, card5)
  calculate_card_value(card1.to_i) + calculate_card_value(card2.to_i)
end

def check_winner(player_points, dealer_points)
  if (player_points > dealer_points && player_points <= 21) || dealer_points > 21
    return "Player"
  elsif dealer_points > player_points
    return "Dealer"
  end
end


my_cards = []
dealer_cards = []

# Deal Cards and Display Total

my_cards << deal_cards(shuffle_cards)
dealer_cards << deal_cards(shuffle_cards)
my_cards << deal_cards(shuffle_cards)
dealer_cards << deal_cards(shuffle_cards)

my_total = calculate_total(my_cards)
dealer_total = calculate_total(dealer_cards)

# Show Player and Dealer Cards

puts "My Cards:  #{my_cards[0]} | #{my_cards[1]} | Total Points: #{my_total}"
puts "Dealer Cards:  #{dealer_cards[0]} | #{dealer_cards[1]} | Total Points: #{dealer_total}"
puts ""

if my_total == 21
  puts "Congratulations you Won!"
  exit
end

while my_total < 21
  puts "Would you like to 1) Hit or 2) Stay?"
  hit_or_stay = gets.chomp

  if !["1", "2"].include?(hit_or_stay)
    puts "Error:  You must enter 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts "You chose to stay"
    break
  end

  #hit
  new_card = card_deck.pop
  puts "Dealing new card to player #{new_card}"
  my_cards << new_card
  my_total = calculate_total(my_cards)
  puts "Your total is now: #{my_total}"

  if my_total == 21
    puts "Congratulations, you hit Blackjack!  You win!"
    exit
  elsif my_total > 21
    puts "Sorry, it looks like you busted!"
    exit
  end
end 

# Dealer turn

if dealer_total == 21
  puts "Sorry, dealer hit Blackjack.  You loose!"
  exit
end

while dealer_total < 17
  # hit
  new_card = card_deck.pop
  puts "Dealing new card to dealer:  #{new_card}"
  dealer_cards << new_card
  dealer_total = calculate_total(my_cards)
  puts "Dealer total is now:  #{dealer_total}"

  if dealer_total == 21
    puts "Sorry, dealer hit Blackjack. You Loose."
    exit
  elsif dealer_total > 21
    puts "Congratulations, dealer busted!  You win"
    exit
  end
end

# Compare Hands

puts "Dealears cards:  "
dealer_cards.each do |card|
  puts "=> #{card}"
end

puts ""

puts "Your cards:  "
my_cards.each do |card|
  puts "=> #{card}"
end

puts ""

if dealer_total > my_total
  puts "Sorry, dealer wins."
elsif my_total < dealer_total
  puts "Congratulations you won!"
else
  puts "It's a tie."
end

exit



