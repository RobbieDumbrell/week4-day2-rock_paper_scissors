require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/game')

also_reload('models/*')

get('/') do
  erb :welcome
end

get('/:player_1_input/:player_2_input') do
  @player_1_move = params[:player_1_input].capitalize
  @player_2_move = params[:player_2_input].capitalize
  game = Game.new(params[:player_1_input].downcase, params[:player_2_input].downcase)
  @outcome = game.outcome()
  erb :display_outcome
end

get('/:player_input') do
  @player_1_move = params[:player_input].capitalize
  @computer_move = ["rock", "paper", "scissors"].sample.capitalize
  game = Game.new(params[:player_input].downcase, @computer_move.downcase)
  @outcome = game.outcome()
  erb :display_outcome_vs_comp
end
