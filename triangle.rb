require_relative 'z_order'

class Triangle
	attr_reader :x, :y

	def initialize
		@x = x
		@y = y
		@h = 
	end

	def draw
		Gosu.draw_line(@x, @y, 0xff_d94214, @x + 10, @y - , 0xff_d94214, ZOrder::SHAPE)
	end
end