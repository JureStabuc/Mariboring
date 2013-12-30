class Inside

def inside
    puts "DJ Shuljo is at the computer"
    puts "playing some serious beats."
    puts "He looks at you and asks:\"What's up! What do you want?\""
    puts "\"The girls want to dance. Play some funky music!\""
    puts "\"You have to give me something\" Shuljo says"
    puts "What do you do?"
    puts "\tLasko beer."
    puts "\tYou raise your voice like every man would do."
    puts "\tYou stop bothering him."

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
end