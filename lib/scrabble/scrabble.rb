module Scrabble

	LETTER_VALUES = [
		[1, "a", "e", "i", "o", "u", "l", "n", "r", "s", "t"],
		[2, "d", "g"],
		[3, "b", "c", "m", "p"],
		[4, "f", "h", "v", "w", "y"],
		[5, "k"],
		[8, "j", "x"],
		[10, "q", "z"]
	]

	SPECIAL_CHARACTERS = w%(\!\?\<\>\'\,\?\[\]\}\{\=\-\)\(\*\&\^\%\$\#\`\~\{\})
	

	class Scrabble

		def self.value_of(letter)
			LETTER_VALUES.each do |value_letters_array|
				if value_letters_array.include?(letter)
					return value_letters_array[0]
				end
			end
		end

		def self.score(word)
			word = word.downcase

			word_score = 0

			word_array = word.chars.to_a

			if word_array.length > 7
				return "Please enter a word that has 7 or fewer characters."
			elsif word_array.include?(" ")
				return "Please only enter one word."
			elsif word_array.length == 0
				return "Please enter at least one letter."
			elsif # any character in the user's input is a special character 
				word_array.each do |letter|
					if SPECIAL_CHARACTERS.include?(letter)
						return "This game only includes letters a-z."
					end
				end
			else
				word_array.each do |letter|
					letter_score = Scrabble.value_of(letter)

					word_score += letter_score
				end
					return word_score
			end
		end




	end # end Scrabble class

end # end Scrabble module
