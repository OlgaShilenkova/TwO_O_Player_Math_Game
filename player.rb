class Player

  LIFE = 3

  attr_reader :name
  
  def initialize(name)
    @name = name
    @score = LIFE
  end 

  def lose_life
  @score = @score - 1
  end  

  def loose_game?  #true if lose, false if win
    @score == 0
  end  
  
  def print_score  
    puts "#{@name}: #{@score}/#{LIFE}"
  end  

end  
