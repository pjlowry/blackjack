require './lib/person'
require './lib/player'
require './lib/card'
require './lib/deck'
require './lib/game'
require './lib/dealer'
require './lib/turn'




puts "Welcome to Blackjack. Please have a seat.\n\n"

player = Player.new('Player 1')
deck = Deck.new
game = Game.new
dealer = Dealer.new('Dealer')


until game.over? #|| 'q'
  puts "Player 1, how much do you want to put down?"
  money = gets.chomp
  turn = Turn.new(player, dealer)
  until turn.over?
    puts "Go ahead and make a bet or press 'w' to walk away."
    bet = gets.chomp
    puts "Here is your hand:"
    deck.deal(player)
    player.hand.each {|card| puts card}
    puts "\n"

    puts "Here is what the Dealer is showing:"
    deck.deal(dealer)
    p dealer.hand[0]
    puts "\n"
    # p dealer.hand #TAKE THIS OUT AFTER TESTING
    # # dealer.hand_value

    if turn.blackjack?
      puts "Player 1, you have a Blackjack!"
      turn.over? == true
    else
      puts "Player 1, you have a #{player.hand_value}, what action would you like to take?"
      puts "You can press 's' to stand or 'h' to hit." #split, double down
      player_choice = gets.chomp

      until player_choice == 's' #this makes an endless loop of hit cards!!!!!!!!!!!!!!!!
        #run the hit loop

        #once s is chosen, end loop and...
        #puts "You chose to stay with a #{player.hand_value}. Now for the dealer."
      
        if player_choice == 'h'
          deck.hit(player)
          player.hand.each {|card| puts card}
            if turn.bust?
              puts "Player 1, you have a #{player.hand_value}. You bust!"
              turn.over? == true
                # lose bet
            else
              puts "Player 1, you have a #{player.hand_value}, what action would you like to take? 'h' hit? or 's' stand?"
            end
        end    

      end
    end 
  #dealer turn
  
  if turn.blackjack?
    puts "Dealer has Blackjack"

  else
    puts "Dealer's cards are:"
    dealer.hand.each {|card| puts card}
    puts "Dealer has a #{dealer.hand_value}."
      until dealer.hand_value >= 17 
        deck.hit(dealer)
        # dealer.hand.each {|card| puts card}
        puts "Dealer hits and gets #{deck.hit(dealer)}"
        puts "Dealer has a: #{dealer.hand_value}"
      end
    end
    if turn.push?
      puts "Push. You get your money back."
      # gets money back.
    end

    if turn.winner?
      puts "You Win!"
      # add money to bank.
    end

    player.discard_cards
    dealer.discard_cards
    # puts "Would you like to play another hand?"

  end
end

    

