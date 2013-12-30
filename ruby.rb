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

  def main_square
    puts "You are getting of the bus at Main Square in Maribor."
    puts "Maribor is a small and sleepy town"
    puts "so you have only limited options to meet friends or hit on girls."
    puts "You're walking towards Postna street thinking about your chances tonight:"
    puts "\"Will this be night of all nights?\""
    puts "\"Or will I just have a beer with my chaps and catch the last bus home?\""
    puts "In Postna street all the bars are packed."
    puts "Are you staying at Postna or going towards bar Tildos? [y/n]"
    
    prompt()
    action = gets.chomp()

    if action == "y"
      return :postna
      
    elsif action == "n"
      return :tildos

    else
      return :main_square
    end
  end

  def postna
    puts "Pick a bar:"
      puts "\tIsabella   (beer, wine and salad place)"
      puts "\tBascarsija (a bosnian restaurant with live music at night)"

      prompt()
      action = gets.chomp()

      if action == "Isabella" || action == "isabella"
        return :isabella
      elsif action == "Bascarsija" || action == "bascarsija"
        return :bascarsija
      else
        return :postna
      end
  end

  def isabella
    puts "Welcome to the most cozy bar in Postna street."
    puts "A waitress comes to get your order."
    puts "You consider to get a beer or a salad."
    puts "It's a difficult decission."
    puts "What do you choose?"
    puts "\tBeer"
    puts "\tSalad"

    prompt()
    action = gets.chomp()

    if action == "Beer" || action == "beer"
      puts "\"Mmmmm thats a good beer.\""
      puts "You order more"
      puts "and more."
      puts "You call your friend"
      puts "and when they arrive you start"
      puts "drinking like there's no tomorrow."
      return :death

    elsif action == "Salad" || action == "salad"
      puts "A nice brunette in the corner notcies you and asks:"
      puts "\"How's the salad?\""
      puts "You start a conversation with her"
      puts "and she sits to your table."
      puts "After a salad, few hours and some wine"
      puts "she suggests to have a glass of wine in her flat."
      puts "Do you accept her invitation? [y/n]"

      prompt()
      next_action = gets.chomp()

      if next_action == "y"
        return :flat
        
        elsif next_action == "n"
        puts "She leaves your table and goes home lonely."
        puts "But nothing is lost, there is still Tildos"
        puts "open and your friends are waiting there for you."
        return :tildos
      end
    end
  end

  def flat
    puts "You arrive at her flat."
    puts "She gives you a glass of Chianti"
    puts "and starts heavily flirting with you."
    puts "Your glass is empty."
    puts "Do you put your glass on the table and start kissing her"
    puts "or pour yourself another glass?"

    prompt()
    action = gets.chomp() 

    if action.include? "glass"
      puts "You drink the bottle of Chianti almost by yourself"
      puts "and are too drunk to satisfy the girl."
      puts "When drunk as heel you start talking with her"
      puts "till sunrise when you catch the first bus home."
      Process.exit(1)

    elsif action.include? "kiss" 
      puts "You scored, Cowboy!"
      Process.exit(0)

    else
      puts "Learn to type!"
      return :flat
    end
  end

  def bascarsija
    puts "Bosnian cuisine consists mainly of ground meat and onions."
    puts "Your breathe smells like a bag of chopped onions and"
    puts "even a chewing gum doesn't help you."
    puts "That turns all ladies off."
    return :death
  end

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
          


      elsif action.include? "blonde" 
        return :blonde

      else 
        return :tildos
      end
  end

  def friends
    puts "You're a good friend."
    puts "The gang awaits you with a female company."
    puts "But the girls want to dance"
    puts "Go inside to speak to the DJ or hang outside?"

      prompt()
      next_action = gets.chomp()

      if next_action.include? "speak"
        return :inside

      elsif next_action.include? "outside" 
        puts "You and your friends finish the drinks."
        puts "It's 3 AM and Maribor is a ghost town at that time."
        puts "Nothing else is open so you head home"
        return :death

      else 
        return :friends
      end    
  end

  def blonde
      puts "She says she needs to go to the toilet."
      puts "\"Wanna join me?\" she asks. [y/n]"

      prompt()
      action = gets.chomp()

      if action == "y"
        return :toilet

      elsif action == "n"
        puts "The girl grabs another guy on her way to the toilet"
        puts "You want to return outside to find your friends"
        puts "but they already left."
        return :death

      else 
        return :blonde
      end
  end

  def inside
    puts "DJ Shuljo is at the computer"
    puts "playing some serious beats."
    puts "He looks at you and asks:\"What's up! What do you want?\""
    puts "\"The girls want to dance. Play some funky music!\""
    puts "\"You have to give me something\" Shuljo says"
    puts "What do you do?"
    puts "\tLasko beer."
    puts "\tYou raise your voice like every man would do."
    puts "\t You stop bothering him."

    prompt()
    action = gets.chomp()

    if action.include? "beer"
      puts "Yeah, Shuljo happily takes the beer and"
      puts "the party starts!"
      puts "You dance with a girl and suddenly"
      puts "she takes your hand and leads you"
      puts "to her nearby flat."
      return :flat

    elsif action.include? "raise"
      puts "Some of the guys throw you out"
      puts "as you're acting violently."
      return :death

    elsif action.include? "stop"
      puts "You and your friends finish the drinks."
      puts "It's 3 AM and Maribor is a ghost town at that time."
      puts "Nothing else is open so you head home"
      return :death
    end    
  end

  def toilet
    puts "You arrive with this slightly"
    puts "goth looking chick to the toilet."
    puts "she gets a small bag with white"
    puts "powder from her bag and"
    puts "makes two lines on the toilet water container."
    puts "She insists that you also sniff. Do you? [y/n]"

    prompt()
    action = gets.chomp()

    if action == "y"
      puts "SNIIIIIIIIIFFFFF"
      puts "Your nose start hurting"
      puts "but there is a nice felling and"
      puts "you are full of energy."
      puts "You run out of Tildos, grab the first bicycle"
      puts "and get lost into the night."
      return :death

    elsif action == "n"
      puts "\"You're a pussy\" she says."
      puts "You leave the toilet, grab the drinks on the counter"
      puts "and bring them to your friends."
      return :friends

    else
      return :toilet
    end
  end
end

a_game = Game.new(:main_square)
a_game.play()