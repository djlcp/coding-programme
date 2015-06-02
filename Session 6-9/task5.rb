# -------------------------------------------------------------------------------------------------------------------
# Usage
# Open irb and type the following - where <number1> and <number2> are the bounds of the random number generation
# > load 'task5.rb'
# > game = GuessingGame.new(<number1>, <number2>)
# > game.play
# -------------------------------------------------------------------------------------------------------------------

class GuessingGame

  # This method gets called when we write 'GuessingGame.new()' from within irb
  def initialize(lower,upper)

    # The @ makes these variables instance variables. They are accessible from any method in the class
    @lower = lower
    @upper = upper
  end

  # This method contains our code for the actual guessing game
  def play

    # We have to set this initially to be 'y' so that the games while loop starts
    playing = 'y'

    # We'll ask the user when they complete the game whether they want to play again
    # If they answer 'no' then the playing variable will change from 'y' and they will quit this loop, meaning they stop playing
    while playing == 'y'

      # At the start of each game round we have to set these variables
      guesses = 0
      start_time = Time.now

      puts "I'm thinking of a number between #{@lower} and #{@upper}..."

      # The calculation of the number can not be as simple as 'rand(@lower..@upper)' because rand() is funny when you give it a range
      number = ( rand() * (@upper - @lower) ).round(0) + @lower

      puts "Please guess the number"
      guess = gets.chomp.to_i

      # This second while loop runs until the person guesses the number correctly
      while guess != number

        guesses += 1
        diff = (guess - number).abs

        # Some hints for the user to aid them in guessing
        if diff < 5

          if guess > number
            puts 'almost! go lower'
          elsif guess < number
            puts 'almost! go higher'
          end

        else

          if guess > number
            puts 'go lower'
          elsif guess < number
            puts 'go higher'
          end

        end

        # Get another guess if they so far have failed to guess the right number
        guess = gets.chomp.to_i
      end

      # The time difference will be a number of seconds
      # It will be a floating point number, so we're going to round it a little
      time_taken = (Time.now - start_time).round(2)

      # If we want to convert this to minutes we have to do some more maths
      minutes = (time_taken / 60).round(2)

      puts "correct! you took #{guesses} guesses and took #{time_taken} seconds (or #{minutes} minutes)"

      # Ask the user if they want to play again.  If their answer is anything other than 'y' it will exit due to the first while loop
      puts "Would you like to play again? (y/n)"
      playing = gets.chomp.downcase

    end

  end

end