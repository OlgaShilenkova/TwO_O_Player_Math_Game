class Question 

  def initialize()
    @randomNum1 = rand(20)
    @randomNum2 = rand(20)
  end 
  
  def ask_question(current_player)
    puts "#{current_player.name}: What does #{@randomNum1} + #{@randomNum2} equal?"
    print "> "
  end 

  def eval_answer?() # return true or false
    userAnswer = $stdin.gets.chomp.to_i
    summ = @randomNum1 + @randomNum2 
    userAnswer == summ
  end  

end  

 