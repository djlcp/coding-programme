#!/usr/bin/ruby

puts 'Hi!'
puts 'What is your name?'
name = gets.chomp.strip

names = ['Tom Luce', 'Matt Chatterley']

if names.include?(name)

  name_parts = name.split(' ')

  puts "******"
  puts "*Hi*"

  name_parts.each do |name_part|
    puts "*#{name_part}*"
  end

  puts '******'

elsif name == ''
  puts 'You didnt write a name'
else
  puts "Unauthorised"
end







