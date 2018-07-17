require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < MiniTest::Test

  def test_both_same_inputs()
    game1 = Game.new("scissors", "scissors")
    result = game1.outcome()
    assert_equal("It's a DRAW!", result)
  end

  def test_scissors_first_paper_second()
    game2 = Game.new("scissors", "paper")
    result = game2.outcome()
    assert_equal("Player 1 wins with SCISSORS!", result)
  end

  def test_paper_first_scissors_second()
    game2 = Game.new("paper", "scissors")
    result = game2.outcome()
    assert_equal("Player 2 wins with SCISSORS!", result)
  end

  def test_rock_first_scissors_second()
    game2 = Game.new("rock", "scissors")
    result = game2.outcome()
    assert_equal("Player 1 wins with ROCK!", result)
  end

  def test_scissors_first_rock_second()
    game2 = Game.new("scissors", "rock")
    result = game2.outcome()
    assert_equal("Player 2 wins with ROCK!", result)
  end

  def test_paper_first_rock_second()
    game2 = Game.new("paper", "rock")
    result = game2.outcome()
    assert_equal("Player 1 wins with PAPER!", result)
  end

  def test_rock_first_paper_second()
    game2 = Game.new("rock", "paper")
    result = game2.outcome()
    assert_equal("Player 2 wins with PAPER!", result)
  end

end
