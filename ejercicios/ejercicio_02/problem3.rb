require 'test/unit'

class SeparateWithCommasTest < Test::Unit::TestCase


	def test_separate_simple_1
		assert_equal "1", separate_with_comma(1)
	end



	def test_separate_with_comma_1000
		
		assert_equal "1,000", separate_with_comma(1000)
	end


	def test_separate_with_comma_10000
		assert_equal "10,000", separate_with_comma(10000)
	end

	def test_separate_with_comma_10000
		assert_equal "100,000", separate_with_comma(100000)
	end

	def test_separate_with_comma_1000
		assert_equal "1,000,000", separate_with_comma(1000000)
	
	end

	def test_separate_simple_10
		assert_equal "10", separate_with_comma(10)
	end

	def test_separate_simple_100
		assert_equal "100", separate_with_comma(100)
	end

end

def separate_with_comma(no)

	
	#Paso el entero del parametro a string
	stringNo = no.to_s

	if stringNo.length <= 3
		return stringNo
	else 
																	#String		cantidad de patrones    resto
		return separate_with_comma_bis(stringNo, stringNo.length / 3, stringNo.length % 3)

	end	


end


def separate_with_comma_bis(str, cant_patrones, resto)
	#Creo un patron
	patron = ",000"
	#Si el resto es 0, significa que la cantidad de patrones es múltiplo de 3
	if resto == 0
		return "100" + agregar_patron(cant_patrones - 1, patron)
	else
		#Si el resto es 1, entonces sobra un dígito
		if resto == 1
			return "1" + agregar_patron(cant_patrones, patron)
		else
			#Caso contrario sobran 2
			return "10" + agregar_patron(cant_patrones, patron)
		end

	end

end

def agregar_patron(cant_patrones, patron)

	result = ""
	while cant_patrones > 0
		#Appendeo el patron al resultado
		result << patron
		#Disminuyo el contador
		cant_patrones = cant_patrones - 1
	end
		
	return result


end

