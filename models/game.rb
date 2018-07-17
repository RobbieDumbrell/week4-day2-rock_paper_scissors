class Game

  def initialize(player_1_input, player_2_input)
    @player_1_input = player_1_input
    @player_2_input = player_2_input
    @player_choices_hash = {"Player 1" => @player_1_input, "Player 2" => @player_2_input}
  end

  def outcome()
    return "It's a DRAW!" if @player_choices_hash["Player 1"] == @player_choices_hash["Player 2"]
    if @player_choices_hash.has_value?("scissors") && @player_choices_hash.has_value?("paper")
      return "#{@player_choices_hash.index("scissors")} wins with SCISSORS!"
    elsif @player_choices_hash.has_value?("paper") && @player_choices_hash.has_value?("rock")
      return "#{@player_choices_hash.index("paper")} wins with PAPER!"
    elsif @player_choices_hash.has_value?("rock") && @player_choices_hash.has_value?("scissors")
      return "#{@player_choices_hash.index("rock")} wins with ROCK!"
    end
  end



  end
