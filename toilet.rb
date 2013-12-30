class Toilet

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