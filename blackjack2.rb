def calculate_total(cards) 
  # [['H', '3'], ['S', 'Q'], ... ]
  arr = cards.map{|e| e[1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end
  # Correct for Aces
  arr.select {|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end
end

puts "Welcome to Blackjack"

suits = ['C', 'D', 'H', 'S']
cards = ['2', '3', '4', '5', '6', '7', '8', '10', 'J', 'Q', 'K', 'A']

deck = suits.product(cards)
deck.shuffle!

# Deal the card

my_cards = []
dealer_cards = []

my_cards << deck.pop
dealer_cards << deck.pop
my_cards << deck.pop
dealer_cards << deck.pop

my_total = 0
delear_total = 0
delear_total = calculate_total(dealer_cards)
my_total = calculate_total(my_cards)

# Show Cards

puts "My Cards: #{my_cards[0]} and #{my_cards[1]} for a total value of #{my_total}"
puts "Dealer Cards: #{dealer_cards[0]} and #{dealer_cards[1]} for a total of #{delear_total}"
puts ""
puts "Would you like to: 1) Hit or 2) Stay"

hit_or_stay = gets.chomp
