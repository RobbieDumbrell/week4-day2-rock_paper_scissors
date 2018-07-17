require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/game')

also_reload('models/game')

get('/:player_1_input/:player_2_input') do
  game = Game.new(params[:player_1_input], params[:player_2_input])
  @outcome = game.outcome()
  return @outcome
end
