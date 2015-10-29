require_relative 'z_order'

class Rectangle
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def draw
		Gosu.draw_line(@x, @y, 0xff_d94214, @x + 50, @y, 0xff_d94214, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y, 0xff_d94214, @x, @y - 30, 0xff_d94214, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y - 30, 0xff_d94214, @x + 50, @y - 30, 0xff_d94214, ZOrder::SHAPE)
		Gosu.draw_line(@x + 50, @y - 30, 0xff_d94214, @x + 50, @y, 0xff_d94214, ZOrder::SHAPE)
	end
end