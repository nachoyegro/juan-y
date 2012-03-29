
class Snaker

	def snakear(input)
		#Pregunto si el input es vacio o nil
		if input == "" or input == nil
			return ""

		else 
			#No es vacio ni nil
			counter = 1
                        output = ''		
			input.each_char do |b|
                                
				
				if counter % 2 == 1
					output = output << b.capitalize()
					counter = counter + 1
				else
					output = output << b
					counter = counter + 1
				end
			end
	
		end
				
		return output
		
	end



end
						

