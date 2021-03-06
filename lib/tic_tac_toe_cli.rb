class TicTacToeCLI

  def initialize
  end

  def call
    input = ""
    puts "Welcome to Tic Tac Toe"
    puts "Would you like to play (yes or no)?:"
    input = gets.strip
    while input != "no" do
      puts "How many players would you like?:"
      input = gets.strip
      if input.to_i.between?(0,2)
        puts "Great - I will start a #{input} person game for you!"
        if input.to_i == 0
          player_1 = Players::Computer.new('X')
          player_2 = Players::Computer.new('O')
        elsif input.to_i == 1
          puts "Do you want to be Player 1 X or Player 2 ?: (1 or 2)"
          # human = gets.strip.to_i
          # puts "do you want to be X or O?:"
          player_number =gets.strip
          if player_number == "1"
            player_1 = Players::Human.new('X')
            player_2 = Players::Computer.new('O')
          else
            player_2 = Players::Human.new('O')
            player_1 = Players::Computer.new('X')
          end
        elsif input.to_i == 2
          player_1 = Players::Human.new('X')
          player_2 = Players::Human.new('O')
        end
      end
      game = Game.new(player_1,player_2)
      game.play
      puts "Would you like to play again? (yes or no):"
      input = gets.strip
    end
  end
  
end
