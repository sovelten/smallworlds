class initialization
initialize
	opposites := Dictionary new initialize
		add: 'north'		-> 'south';
		add: 'south'		-> 'north';
		add: 'west'		-> 'east';
		add: 'east'		-> 'west';
		yourself.
		
	points := Dictionary new initialize
		add: 'north'		-> (0@(-1));
		add: 'south'		-> (0@1);
		add: 'west'		-> (-1@0);
		add: 'east'		-> (1@0);
		yourself