class Greeting
  def initialize(your_name)
    @name = your_name
  end

  def say_hello
    "Hello, #{ @name }, nice to meet you!"
  end

  def display
    puts say_hello
  end
end


if __FILE__ == $0
  # Input
  puts "What's your name ?"
  your_name = gets.chomp

  #  concatnation
  greeting = Greeting.new(your_name)

  # display o/p
  greeting.display
end


# Another version of this problem without creating any classes and variables
# Hello, #{ gets.chomp }, nice to meet you!

# TODO:
#     Write a version of the program that displays different
#     greetings for different people. This would be a good challenge to try
#     after you’ve completed the exercises in
#     Chapter 4, Making Decisions, on page 29 and Chapter 7, Data Structures, on page 63.