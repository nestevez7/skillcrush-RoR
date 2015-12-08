#numerology app refactored using methods

puts "Welcome to the best numerology app of the world! To begin, please enter your date of birth (MMDDYYYY):"
birthdate = gets

def birth_path_number(birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
	number = number.to_s
	number = number[0].to_i + number[1].to_i
	
	if (number >= 10)
		number = number.to_s
		number = number[0].to_i + number[1].to_i
	end
	
	return number
end

number = birth_path_number(birthdate)

def meaning(number)
	case number
	when 9
		message = "Your numerology number is #{number}\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	when 8
		message = "Your numerology number is #{number}\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 7
		message = "Your numerology number is #{number}\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 6
		message = "Your numerology number is #{number}\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 5
		message = "Your numerology number is #{number}\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 4
		message = "Your numerology number is #{number}\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 3
		message = "Your numerology number is #{number}\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 2
		message = "Your numerology number is #{number}\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 1
		message = "Your numerology number is #{number}\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	end
end

#puts "Welcome to the best numerology app of the world! To begin, please enter your date of birth (MMDDYYYY):"
#birthdate = gets

#number = birth_path_number(birthdate)

message = meaning(number)

puts "#{message}"