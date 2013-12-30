class Postna

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
end