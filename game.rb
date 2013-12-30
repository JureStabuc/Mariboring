require "./isabella.rb"
require "./flat.rb"
require "./tildos.rb"
require "./friends.rb"
require "./blonde.rb"
require "./inside.rb"
require "./toilet.rb"
require "./postna.rb"
require "./bascarsija.rb"
require "./main_square.rb"

class Game
  def initialize(start)
    @quips = [
      "Tonight you are riding alone, cowboy!"
    ]
    @start = start
  end

  def prompt()
    print "> "
  end

  def play()
    next_room = @start

    while true
      puts "\n---------"
      room = method(next_room)
      next_room = room.call()
    end
  end

  def death()
    puts @quips
    Process.exit(1)
  end
end

a_game = Game.new(:main_square)
a_game.play()