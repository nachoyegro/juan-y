Feature: Batalla naval

	Scenario: Win
		Given jugador2 has one boat left
		When I sink his boat
		Then I win

	Scenario: Sink
		Given It is my turn
		When I sink his boat
		Then It is my turn

	Scenario: Miss
		Given It is my turn
		When I miss
		Then It is his turn

