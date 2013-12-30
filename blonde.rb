class Blonde

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
end