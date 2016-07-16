difs = [10, 100, 1000]
play = "y"
while play == "y"
	puts "Enter Difficulty Level: 1,2,3 "
	level = gets.chop
	levelint = level.to_i - 1
	diflevel = difs[levelint]

	puts "Choosing random number between 1 and " + diflevel.to_s
	number = Random.rand(1..diflevel)

	puts "Secret number sorcery complete! It is " + number.to_s
	tries = 0
	guess = 0
	highlow = ""
	while number != guess.to_i
		tries += 1
		unless tries == 1
			if guess.to_i < number
				highlow = "Too low. Guess again!"
			else
				highlow = "Too High. Guess Again!"
			end
		end
		puts highlow + " guess #" + tries.to_s + ": Pick a number, any number!"
		guess = gets.chop
		unless guess.to_i.to_s == guess
			puts "You didn't enter a number, bro."
		end
	end

	if tries == 1
		msg = "You're a mind reader!"
	elsif tries < 5
		msg = "Most impressive."
	elsif tries < 7
		msg = "But you can do better than that."
	else
		msg = "Better luck next time."
	end

	puts "Congratulations! You Guessed the number in " + tries.to_s + " tries! " + msg

	puts "Play Again? y or n: "
	play = gets.chop
end

puts "Goodbye!"
	
