require 'spec_helper'


puts "Welcome to Blackjack. Please have a seat."
player = Player.new('Player 1')
deck = Deck.new
game = Game.new
dealer = Dealer.new('Dealer')

# puts "Player 1, how much do you want to put down?"
# gets.chomp
until game.over? #|| 'q'
  puts "Player 1, how much do you want to put down?"
  money = gets.chomp
  puts "Go ahead and make a bet."
  bet = gets.chomp
  puts "Here is the deal:"
  deck.deal(player)
  player.hand#.each { |x| p x.join(" of ")}
  p player.hand_value

  puts "Here is what the dealer is showing:"
  deck.deal(dealer)
  p dealer.dealer_hand[0]
  p dealer.dealer_hand #TAKE THIS OUT AFTER TESTING
  p dealer.hand_value

  puts "Player 1, you have a #{player.hand_value}, what action would you like to take?"
  puts "You can press 'h' to hit or 's' to stand." #split, double down
  player_choice = gets.chomp
    if player_choice == 'h'
      until player_choice == 's' || player.hand_value > 21
        player.hit
      end

    elsif player_choice == 's'

   end
end

    

