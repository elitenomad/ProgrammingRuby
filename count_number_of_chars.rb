class CountNumberOfChars
  def initialize(input_string)
    if input_string.nil? || input_string.length == 0
      throw 'You  must enter a valid string'
    end

    puts 'i amhere'
    @str = input_string
  end

  def count_chars_in_a_string
    @str.length()
  end

  def display
    puts "#{ @str } has #{ count_chars_in_a_string} characters"
  end
end



if __FILE__ == $0
  puts "What your input ?"
  input_string = gets.chomp()
  count_number_of_charts_instance = CountNumberOfChars.new(input_string)
  puts count_number_of_charts_instance.display
end


#TODO
# Implement this program using a graphical user interface
# and update the character counter every time a key is
# pressed. If your language doesn’t have a particularly
# friendly GUI library, try doing this exercise with HTML
# and JavaScript instead.