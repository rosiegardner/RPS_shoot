require('pry')

class RPS
  def initialize()
    player1_score = 0
    player2_score = 0
  end
  
# reader method 
  def player1_score
    @player1_score
  end

  def player2_score
    @player2_score
  end

    # writer method 
  def player1_score=(score)
    @player1_score += score
  end

  def player2_score=(score)
    @player2_score += score
  end

  def wins?(player1, player2)
    if(player1 == "rock") && (player2 == "scissors") ||      (player1 == "scissors") && (player2 == "paper") || 
    (player1 == "paper") && (player2 == "rock")
      @player1_score = 1
      
    elsif((player1 == "scissors") && (player2 == "rock")) || ((player1 == "paper") && (player2 == "scissors")) || ((player1 == "rock") && (player2 == "paper"))
      @player2_score = 1

    elsif((player1 == player2))
      nil
    end

  end
end