class Board 
  attr_accessor :board 

  
  
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end 
  
  def welcome_msg
    puts "\t **********************"
    puts "\t WELCOME TO TIC TAC TOE"
    puts "\t **********************"
    
  end 
  
  def display_board
    puts "\t     ************"
    puts "\t      TIC TAC TOE"
    puts "\t     ************"
    puts "\t\t #{@board[0]}|#{@board[1]}|#{@board[2]}"
    puts "\t\t--|-|--"
    puts "\t\t #{@board[3]}|#{@board[4]}|#{@board[5]}"
    puts "\t\t--|-|--"
    puts "\t\t #{@board[6]}|#{@board[7]}|#{@board[8]}"
  end 
  
  def player_move(player_choice,symbol) 
    @board.map! do |game_board|
      if game_board == player_choice 
        game_board = symbol
        
      else   
      game_board
        
      end 
    end 

    
  end 
  
  def win?(player)
    if @board[0] == @board[1] && @board[2] == @board[1] ||
       @board[3] == @board[4] && @board[5] == @board[4] ||
       @board[6] == @board[7] && @board[8] == @board[7] ||
       @board[0] == @board[3] && @board[6] == @board[3] ||
       @board[1] == @board[4] && @board[7] == @board[4] ||
       @board[2] == @board[5] && @board[8] == @board[5] ||
       @board[0] == @board[4] && @board[8] == @board[4] ||
       @board[6] == @board[4] && @board[2] == @board[4]
       
       
       
       puts "Better luck next time! #{player.capitalize}"
      exit 
    end 
  end
  

end 




class Player 
  attr_reader :name, :symbol 
  
  def initialize(name,symbol)
    @name = name 
    @symbol = symbol 
  end 
  
end 

board = Board.new 
board.welcome_msg 

puts "What is the first players name: "
name1 = gets.chomp 
player1 = Player.new(name1,"X")
puts "Hi, #{name1} your symbol is 'X'"

puts "What is the second players name: "
name2 = gets.chomp 
player2 = Player.new(name2,"O")
puts "Hi, #{name2} your symbol is 'O' "

current_player = player1

board.display_board 

current_player = player1



until board.win?(current_player.name) do 

puts "#{current_player.name} It's your turn place your symbol on the board: "
choice = gets.chomp
board.player_move(choice.to_i,current_player.symbol)
board.display_board 

  if current_player == player1
    current_player = player2
  else 
   current_player = player1
  end 
  
  
  


end 