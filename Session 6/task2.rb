#!/usr/bin/ruby

# -------------------------------------------------------------------------------------------------------------------
# NOTE: You can add or remove block comments with CMD + / (on a mac) or CTRL + / (Windows)
# -------------------------------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------------------------------
# The simplest way possible to print the two times table..
# -------------------------------------------------------------------------------------------------------------------

puts '2'
puts '4'
puts '6'
puts '8'
puts '10'
puts '12'
puts '14'
puts '16'
puts '18'
puts '20'
puts '22'
puts '24'

# -------------------------------------------------------------------------------------------------------------------
# A slightly shorter attempt...
# -------------------------------------------------------------------------------------------------------------------

[1,2,3,4,5,6,7,8,9,10,11,12].each do |multiplier|
  puts 2 * multiplier
end

# -------------------------------------------------------------------------------------------------------------------
# Even shorter...
# -------------------------------------------------------------------------------------------------------------------

(1..12).each do |multiplier|
  puts 2 * multiplier
end

# -------------------------------------------------------------------------------------------------------------------
# This is too short as it affects readability
# -------------------------------------------------------------------------------------------------------------------

(1..12).each{|m|p 2*m}

# -------------------------------------------------------------------------------------------------------------------
# Receiving input from a user and making it output any times table
# -------------------------------------------------------------------------------------------------------------------

puts 'I can haz number plz?'
number = gets.chomp
puts 'Is times table:'

(1..12).each do |multiplier|
  puts number * multiplier
end

# -------------------------------------------------------------------------------------------------------------------
# Whoops, we forgot to cast the input to an integer (by default 'gets' returns a string)
# -------------------------------------------------------------------------------------------------------------------

puts 'I can haz number plz?'
number = gets.chomp.to_i
puts "Is #{number} times table:"

(1..12).each do |multiplier|
  total = number * multiplier
  puts "#{multiplier} x #{number} = #{total}"
end

# -------------------------------------------------------------------------------------------------------------------
# Adding in some extra functionality so that if we enter -1 it outputs the times tables from 1 through 12
# -------------------------------------------------------------------------------------------------------------------

puts 'I can haz number plz?'
input_number = gets.chomp.to_i

if input_number == -1

  (1..12).each do |number|

    puts "Is #{number} times table:"
    (1..12).each do |multiplier|
      total = number * multiplier
      puts "#{multiplier} x #{number} = #{total}"
    end
    puts "\n"

  end

else

  puts "Is #{input_number} times table:"
  (1..12).each do |multiplier|
    total = input_number * multiplier
    puts "#{multiplier} x #{input_number} = #{total}"
  end
  puts "\n"

end

# -------------------------------------------------------------------------------------------------------------------
# Refactor our code and put the bit we've repeated into a function
# Make sure we define the function before it is called otherwise it will error
# -------------------------------------------------------------------------------------------------------------------

def output_times_table(number)

  puts "Is #{number} times table:"
  (1..12).each do |multiplier|
    total = number * multiplier
    puts "#{multiplier} x #{number} = #{total}"
  end
  puts "\n"

end

puts 'I can haz number plz?'
input_number = gets.chomp.to_i

if input_number == -1
  (1..12).each do |number|
    output_times_table(number)
  end
else
  output_times_table(input_number)
end

# -------------------------------------------------------------------------------------------------------------------
# Using a class instead of procedural code
# Load up a ruby console, then load the class in with
# > load 'task2.rb'
# Instantiate it with something like
# > obj = TimesTable.new(3)
# Print out the times table to the screen with
# > obj.output
# -------------------------------------------------------------------------------------------------------------------

class TimesTable

  def initialize(number)
    @number = number
  end

  def output

    if @number == -1
      (1..12).each do |number|
        output_times_table(number)
      end
    else
      output_times_table(@number)
    end

  end

  def output_times_table(number)
    puts "Is #{number} times table:"
    (1..12).each do |multiplier|
      total = number * multiplier
      puts "#{multiplier} x #{number} = #{total}"
    end
    puts "\n"
  end

end