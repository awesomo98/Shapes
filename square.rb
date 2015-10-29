require_relative 'z_order'

class Square
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def draw
		Gosu.draw_line(@x, @y, 0xff_2BDCE1, @x + 5, @y, 0xff_2BDCE1, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y, 0xff_2BDCE1, @x, @y - 5, 0xff_2BDCE1, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y - 5, 0xff_2BDCE1, @x + 5, @y - 5, 0xff_2BDCE1, ZOrder::SHAPE)
		Gosu.draw_line(@x + 5, @y - 5, 0xff_2BDCE1, @x + 5, @y, 0xff_2BDCE1, ZOrder::SHAPE)
		Gosu.draw_line(@x + 1, @y - 5, 0xff_FFD700, @x + 1, @y, 0xff_FFD700, ZOrder::SHAPE)
		Gosu.draw_line(@x + 2, @y - 5, 0xff_FFD700, @x + 2, @y, 0xff_FFD700, ZOrder::SHAPE)
		Gosu.draw_line(@x + 3, @y - 5, 0xff_FFD700, @x + 3, @y, 0xff_FFD700, ZOrder::SHAPE)
		Gosu.draw_line(@x + 4, @y - 5, 0xff_FFD700, @x + 4, @y, 0xff_FFD700, ZOrder::SHAPE)
	end
end