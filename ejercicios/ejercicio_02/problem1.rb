require 'test/unit'

class StringTest < Test::Unit::TestCase

	

	def test_caso_tres
		
		assert_equal fizzbuzz(3), "Fizz"

	end

	def test_caso_cinco
		
		assert_equal fizzbuzz(50), "Buzz"

	end

	def test_caso_tres_y_cinco
		
		assert_equal fizzbuzz(15), "FizzBuzz"
		assert_equal fizzbuzz(5175), "FizzBuzz" 

	end

end

def fizzbuzz(x)

	if x % 3 == 0 and x % 5 == 0
		return "FizzBuzz"
	else 
		if x % 5 == 0
			return "Buzz"
		else
			return "Fizz"
		end
	
	end
end

