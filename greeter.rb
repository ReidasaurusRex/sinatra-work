class Greeter
	# /hi path greeting
	def greet
		"<h3>Howdy doody! I'm Frank!</h3>"
	end

	# /quote path greeting
	def quote tag="abc"
		# available quotes
		quote_hash = {
			:life => ["The big lesson in life, baby, is never be scared of anyone or anything.",
			"The best is yet to come.",
			"The best revenge is massive success."],
			:love => ["You may be a puzzle, but I like the way the parts fit.", "A simple I love you means more than money.",
				"I like intelligent women. When you go out, it shouldn't be a staring contest."],
			:alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy.",
			 "Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
			 "I feel sorry for people that don't drink, because when they wake up in the morning, that is the best they are going to feel all day"],
			 :nil => "Please pass in a quote type."
		}
		# functionality
		if quote_hash.has_key?(tag.to_sym) 
			["<h2>Quotes by Frank, for the people.</h2>",
				"<h4>Quotes about #{tag}: </h4>",
				"<ul>"
			].push("<li> #{quote_hash[tag.to_sym].sample} </li> </ul>")
		else 
			"Please specify quote type; life, love, or alcohol; in the path."
		end
	end # end quote method

end # end Greeter class
