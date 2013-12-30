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