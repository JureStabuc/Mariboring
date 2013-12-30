class Tildos

def tildos
    puts "You arive at the smalest and hippest bar in Maribor."
    puts "You meet your friend outside Tildos because the place"
    puts "is packed but you still decide to get your drinks."
    puts "Because you arrived last you have to buy the first round."
    puts "As you struggle to get to the counter, you bump into a nice blonde girl."
    puts "You apologize and she's start talking with you"
    puts "but throuh the windows you see your friends who wave"
    puts "at you to get the drinks quickly."
    puts "You find yourself in a dilemma:"
    puts "\"Should I get the drinks or speak to this bleach hair blonde"
    puts "with black eyeline and skinny legs?\""

      prompt()
      action = gets.chomp()

        if action.include? "drinks"
          return :friends
          


      elsif action.include? "blonde" 
        return :blonde

      else 
        return :tildos
      end
  end
end