class Game

  def initialize(player_1_input, player_2_input)
    @player_1_input = player_1_input
    @player_2_input = player_2_input
    @player_choices_hash = {"player_1" => @player_1_input, "player_2" => @player_2_input}
  end

  # def outcome()
  #   return "draw" if @player_1_input == @player_2_input
  #     if (@player_1_input == "scissors" || @player_2_input == "scissors") && (@player_1_input == "paper" || @player_2_input == "paper")
  #       return "scissors wins"
  #     end
  #   end
  # def outcome()
  #   return "draw" if @array[0] == @array[1]
  #   return "scissors wins" if @array.include?("scissors") && @array.include?("paper")
  #   return "rock wins" if @array.include?("rock") && @array.include?("scissors")
  #   return "paper wins" if @array.include?("paper") && @array.include?("rock")
  # end

  def outcome()
    return "draw" if @player_choices_hash["player_1"] == @player_choices_hash["player_2"]
    if @player_choices_hash.has_value?("scissors") && @player_choices_hash.has_value?("paper")
      return "#{@player_choices_hash.index("scissors")} wins with scissors"
    elsif @player_choices_hash.has_value?("paper") && @player_choices_hash.has_value?("rock")
      return "#{@player_choices_hash.index("paper")} wins with paper"
    else
      return "#{@player_choices_hash.index("rock")} wins with rock"
    end
  end



  end
