def prompt()
	print "> "
end

# step 3 option 2, cave location
def cave_pace()
	puts "you reached the cave, would you like walk in or walk out?"
	prompt; next_move=gets.chomp
	if next_move.include? "in" 
		puts "you've walked in and found a treasure..."
		Process.exit(0)
	elsif next_move.include? "out"
		puts "you've walked out, and met and old lady who tells you some pearl of wisdom"
		Process.exit(0)
	else
		dead("wrong choice, chose in or out")
	end
end

# step 3 option 1 , jungle location
def jungle_place()
	puts "you reached the jungle, would you like to follow the chimp of the zebra?"
	prompt; next_move=gets.chomp
	if next_move== "chimp" 
		puts "you've followed the chimp to some old ruins..."
	elsif next_move == "zembra"
		puts "you've followed the zebra to an open field..."
	else
		dead("wrong choice, chose chimp or zebra")
	end
end

# second step,location choice
def jungle_cave_place_choice()
		puts "you're on a horse back, wold you like to go torwards the cave or the jungle? "	
		prompt; next_move=gets.chomp
		if next_move =="cave"
			cave_palace()
		elsif next_move == "jungle" 
			jungle_place()
		else
			dead("wrong choice, you have to chose between cave and jungle")
			jungle_cave_place_choice()
		end
	end

# exit strategy
def dead (why)
		puts "#{why} Good Job!"
		Process.exit(0)
	end


#beginning of the game
def start()
	puts"you are a knight on a quest"
	puts " but what is your quest?"
	puts " you chose, meanwhile while you think about it, do you want to get on the horse?"

prompt; next_move=gets.chomp

if next_move == "yes"
	jungle_cave_place_choice()
	elsif
		next_move == "no"
		puts "what kind of knight doesn't want to get on their horse? "
		start()
	else
		puts"I don't understand what you say, just say 'yes' "
		start()
end
end

start()