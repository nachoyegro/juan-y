
Given /jugador2 has one boat left/ do
	jugador1 = Jugador.new([Bote.new(5,5)])
	jugador2 = Jugador.new([Bote.new(4,6)])
end

When /I sink his boat/ do
	jugador2.arriesgar(4,6)
end

Then /I win/ do
	assert_true self.yaGane
end


Given /It is my turn/ do
	jugador1 = Jugador.new([Bote.new(4,2), Bote.new(5,5)])
	jugador2 = Jugador.new([Bote.new(4,6), Bote.new(2,1)])
	jugador1.esMiTurno = true
	jugador2.esMiTurno = false
end



When /I sink his boat/ do
	jugador2.arriesgar(4,6)
end

Then /It is my turn/ do
	assert_true jugador1.esMiTurno
end


When /I miss/ do
	jugador2.arriesgar(10,10)
end

Then /It is his turn/ do
	assert_false jugador1.esMiTurno
end
