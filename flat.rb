class Flat

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
end