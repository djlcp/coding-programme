# define options
options = ["rock", "paper", "scissors"]

# define score
player_score = 0
cpu_score = 0

# premable and players turn

puts "Lets play Rock, Paper, Scissors...."

while player_score < 2 && cpu_score < 2
	puts "Choose your weapon?"
	player = gets.downcase.chomp

	# computer makes choice
	cpu = options.sample

	puts "I choose #{cpu}"

	# decides who wins
	if player == "rock" && cpu == "scissors"
		puts "You win"
		player_score += 1

	elsif player == "paper" && cpu == "scissors"
		puts "You lose"
		cpu_score += 1

	elsif player == "paper" && cpu == "rock"
		puts "You win"
		player_score += 1

	elsif player == "scissors" && cpu == "rock"
		puts "You lose"
		cpu_score += 1

	elsif player == "scissors" && cpu == "paper"
		puts "You win"
		player_score += 1

	elsif player == "rock" && cpu == "paper"
		puts "You lose"
		cpu_score += 1

	else player == cpu
		puts "Its a draw"
	end

	puts "You've won #{player_score} and I've won #{cpu_score}"

	#puts "Shall we play again (Y or N)?"
	#answer = gets.downcase.chomp

end
