require_relative "spec_helper"
require_relative "../lib/game"
require_relative "../lib/fake_console"

RSpec.describe Game do

context "when game is started"
it "greets the user" do
  console = FakeConsole.new
  game = Game.new console

  game.greet

  expect(console.last_putsed).to eq("Hello Jimmy Johns! ")
end

# def says_hello_to_the_player
#   console = FakeConsole.new
#
#   game = Game.new(console)
#
#   game.greet
#
#   expect(console.last_putsed).to eq("Hello Jimmy Johns")
# end

end
