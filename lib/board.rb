class Board

	attr_accessor :cells
	@cells = []

	def reset! 
		@cells = Array.new(9, " ")
	end

	def initialize
		reset!
	end


	def display
		puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} \n-----------\n #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]}  \n-----------\n #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} " 
	end


	def position(input)
		@cells[input.to_i - 1]
	end

	def update(input, player)
		position(input) = player.token()
	end


	def full?
		!@cells.any? { |cell| cell == " " }
	end

	def turn_count
		@cells.count { |cell| cell == "X" || cell == "O"}
	end

	def taken?(input)
		positioninput) == "X" || position(input) == "O"
	end

	def valid_move?(input)
		(1..9).include?(input.to_i) && !taken?(input)
	end