require 'test/unit'
require 'snaker.rb'

class TestSnakeCasing < Test::Unit::TestCase

  def test_caso_simple
    # arrange
    input = "holamundo"
    snaker = Snaker.new
    
    # act
    resultado = snaker.snakear(input)

    #assert
    assert_equal("HoLaMuNdO", resultado)
  end

  def test_no_falla_con_string_vacio
    # arrange
    input = ""
    snaker = Snaker.new
    
    # act
    resultado = snaker.snakear(input)

    #assert
    assert_equal("", resultado)
  end


  def test_no_falla_con_nil
    # arrange
    input = nil
    snaker = Snaker.new
    
    # act
    resultado = snaker.snakear(input)

    #assert
    assert_equal("", resultado)
  end

end
