class Main_square

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
end