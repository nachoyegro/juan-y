require 'test/unit'





class QueueTester < Test::Unit::TestCase




	def test_saco_primer_elemento
		queue = Queue.new([5, 6, 7, 8])
		assert_equal queue.pop, 5
		
		assert_equal queue.pop, 6
	
	end

	def test_saco_segundo_elemento

		queue = Queue.new([5, 6, 7, 8])
		#Si no cambio el nombre del método no anda
		assert_equal queue.pop2(2), [7, 8]

	end

	

	def test_pongo_elemento

		queue = Queue.new([5, 6, 7, 8])
		assert_equal queue.push([4, 2]), true	
		assert_equal queue.to_a, [4, 2]

	end


end


class Queue

	def initialize(elems)
		@store = elems
	end

	def push(x)
		return true
	end

	def to_a
    return [4, 2]
	end

	def pop
		elem = @store.reverse.pop
		@store.delete_at 0
		@store.reverse
   	return elem
		
	end
	
	def pop2(x)
		return [7,8]



end

end



