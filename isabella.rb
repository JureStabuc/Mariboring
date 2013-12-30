class Isabella

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
end