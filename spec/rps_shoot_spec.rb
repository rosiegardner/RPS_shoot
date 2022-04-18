require('rspec')
require('rps_shoot')

describe(RPS) do
  describe('#wins?') do
    it("returns 1 point for player1 if selected object beats the argument") do
      game = RPS.new()
      game.wins?("rock", "scissors")
      game.wins?("scissors", "paper")
      game.wins?("paper", "rock")
      expect(game.player1_score).to(eq(1))
    end

    it("returns 1 point for player2 if selected object beats the argument") do
      game2 = RPS.new()
      game2.wins?("scissors", "rock")
      game2.wins?("paper", "scissors")
      game2.wins?("rock", "paper")
      expect(game2.player2_score).to(eq(1))
    end
    
    it("returns nil if the object and argument are the same") do
      game3 = RPS.new()
      game3.wins?("rock", "rock")
      game3.wins?("scissors", "scissors")
      game3.wins?("paper", "paper")
      expect(game3.player1_score).to(eq(nil))
      expect(game3.player2_score).to(eq(nil))
    end
  end
end

    # it("returns false if scissor is the object and rock is the argument") do
    #   game4 = RPS.new()
    #   expect(game4.wins?("scissors", "rock")).to(eq(false))
    # end

    # it("returns false if paper is the object and scissors is the argument") do
    #   game5 = RPS.new()
    #   expect(game5.wins?("paper", "scissors")).to(eq(false))
    # end

    # it("returns false if rock is the object and paper is the argument") do
    #   game6 = RPS.new()
    #   expect(game6.wins?("rock", "paper")).to(eq(false))
    # end