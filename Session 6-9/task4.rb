
# -------------------------------------------------------------------------------------------------------------------
# Our Dice class
# We create it by saying
# > d = Dice.new(number_of_rolls_goes_here)
# We can stipulate a number of rolls if we want. By default it will only roll once
# To roll we'd then write
# > d.roll
# And we'd get back an array containing the output
# -------------------------------------------------------------------------------------------------------------------
class Dice

  def initialize(throws=1)
    @throws = throws
  end

  def roll

    # An empty array with which to store out dice rolls in
    @rolls = []

    @throws.times do

      # Use rand to simulate the roll of a die
      roll = rand(1..6)

      # There are few methods of adding to an array. You may also see the double less-than syntax: rolls << roll
      @rolls.push(roll)

    end

    return @rolls

  end

end

# -------------------------------------------------------------------------------------------------------------------
# A child class of the dice. It inherits from the dice (note the less than arrow in the class definition)
# We play the game by saying:
# > c = CrownAnchor.new
# > c.play
# -------------------------------------------------------------------------------------------------------------------
class CrownAnchor < Dice

  # We want to define our own initialize method because we always want 3 dice throws
  def initialize
    @throws = 3
  end

  # We're going to extend the roll method of the dice class
  # We start by giving it the same method name
  def roll

    # Calling super makes it call the roll method on the Dice (parent) class
    # This will generate the @rolls array for us
    super

    # We're now going to take the array and turn numbers into strings (crownd and anchor options)
    # See http://ruby-doc.org/core-2.2.0/Array.html#method-i-map-21
    @rolls.map! do |roll|

      case roll
      when 1
        'crown'
      when 2
        'anchor'
      when 3
        'heart'
      when 4
        'spade'
      when 5
        'club'
      when 6
        'diamond'
      end

    end

  end

  def play

    puts "Which option do you want to bet on? (crown,anchor,heart,spade,club,diamond)"

    # We could maybe validate the user input here to make sure they have selected a valid option but im lazy
    choice = gets.chomp

    puts "How much do you want to bet?"

    bet_amount = gets.chomp.to_i

    # Roll the dice
    puts "The dice are being rolled..."

    # Writing roll calls the roll method in this class
    # This makes the @rolls array available to us
    roll

    puts "And the results are in. You've rolled: #{@rolls}"

    # Loop over each roll and count how many times your choice was rolled
    counter = 0
    @rolls.each do |roll|
      if roll == choice
        counter += 1
      end
    end

    # Calculate the total amount won
    total_won = counter * bet_amount

    # An output to indicate whether the player was successful
    if total_won > 0
      puts "Congratulations, you have won £#{total_won}"
    else
      puts "You have lost all your money"
    end


  end

end