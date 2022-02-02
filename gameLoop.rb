class GameLoop

  def initialize()
   @player1 = Player.new("Player 1")
   @player2 = Player.new("Player 2")
   @current_player = @player1
  
  end

  def start

    while !@player1.loose_game? && !@player2.loose_game?
      question = Question.new 
      question.ask_question(@current_player) 
      if question.eval_answer?
        puts "#{@current_player.name}: Great! It's right!"
      else  
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.lose_life
      end  
      @player1.print_score 
      @player2.print_score 
      switch_player
      if !@player1.loose_game? && !@player2.loose_game?
      puts " NEW TURN"
      end
    end 
    #check winner
    if
      !@player2.loose_game?
      puts "Player 2 is win! " 
      @player2.print_score 
    else
      puts "Player 1 is win! " 
      @player1.print_score 
    end  
    puts "Game over!"
  end

  
  def switch_player
    if 
      @current_player == @player1
      @current_player = @player2
      puts "The current player is : #{@current_player.name}" 
    else
      @current_player = @player1
      puts "The current player is : #{@current_player.name} " 
    end    
  end  
end