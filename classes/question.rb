class Question
  attr_reader :correct_answer
  
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20) 
    @correct_answer = @num1 + @num2
  end 

  def ask_question(current_player, opponent)
    puts "#{current_player.player}: What is #{@num1} plus #{@num2}?!"
    print "> "
    player_answer = $stdin.gets.chomp.to_i

    if player_answer == correct_answer
      puts "#{current_player.player}: YES! YOU ARE CORRECT!"
    else
      puts "#{current_player.player}: WRONG! AND YOUR LIFE IS FORFEIT!"
        opponent.lose_life
    end
  end
end