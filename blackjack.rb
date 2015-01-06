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


card_faces = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

def create_card_suits(suit, range)
  card_suit = {}
  (range).each {|key, value| card_suit[key] = "#{key} of #{suit}"}
  card_suit
end

def make_deck_of_cards(suit1, suit2, suit3, suit4)
  deck = suit1.concat([suit2, suit3, suit4])
  deck
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

def calculate_card_value(card)
  if card[0] == "J" || card[0] == "Q" || card[0] == "K"
    card_value = 10
  elsif card[0] == "A"
    card_value = 11
  else
    card_value = card.to_i
  end
end

def calculate_total_points(card1, card2)
  calculate_card_value(card1.to_i) + calculate_card_value(card2.to_i)
end

player_card1 = ""
player_card2 = ""
dealer_card1 = ""
dealer_card2 = ""
player_card1_value = "" 


  player_card1 << deal_cards(shuffle_cards)
  dealer_card1 << deal_cards(shuffle_cards)
  player_card2 << deal_cards(shuffle_cards)
  dealer_card2 << deal_cards(shuffle_cards)

puts "Player Cards:"
puts player_card1
puts player_card2

card1_value = calculate_card_value(player_card1)
card2_value = calculate_card_value(player_card2)
player_points = calculate_total_points(card1_value, card2_value)

puts "Total Points:  #{player_points.to_s}"

puts "Dealer Cards:"
puts dealer_card1
puts dealer_card2





