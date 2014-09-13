# Paper Rock Scissors

def win(ans1,ans2)
	if ans1 == ans2
		puts "It's a tie."
	elsif (ans1 == 'paper' and ans2 == 'rock') || (ans1  == 'rock' and ans2 == 'scissor') || (ans1 == 'scissor' and ans2 == 'paper')
		puts "You won!"
	elsif (ans1 == 'paper' and ans2 == 'scissor') || (ans1 == 'rock' and ans2 == 'paper') || (ans1 == 'scissor' and ans2 == 'rock')
		puts "The computer won!"
	end
end
ans = 'Y'
until ans.upcase == 'N'
	puts "Let's play Paper Rock Scissors!"
	puts "You pick first: P/R/S"
	ans1 = gets.chomp
	ans2 = rand(3)

	if ans2 == 0
		ans2 = "paper"
	elsif ans2 == 1
		ans2 = "rock"
	else
		ans2 = "scissor"
	end

	if ans1.upcase == 'P'
		ans1 = "paper"
	elsif ans1.upcase == 'R'
		ans1 = "rock"
	elsif ans1.upcase == 'S'
		ans1 = "scissor"
	end

	puts "You picked #{ans1} and computer picked #{ans2}."
	win(ans1,ans2)
	puts "Try again? Y/N"
	ans = gets.chomp
end
